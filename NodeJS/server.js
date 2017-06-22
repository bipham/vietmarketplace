/**
 * Created by nobikun1412 on 27-May-17.
 */
var app = require('express')();
var server = require('http').Server(app);
var io = require('socket.io')(server);
var redis = require('redis');

server.listen(8890);
console.log('Server running port: 8890 ...');
current_sockets = {};
io.on('connection', function (socket, myID) {
    console.log("new client connected: " + socket.id);
    var redisClient = redis.createClient();
    redisClient.subscribe('message');
    redisClient.subscribe('notification');
    redisClient.on("message", function(channel, data) {
        if (channel == 'notification') {
            console.log("new matchNotification", channel, data);
            var dataJSON = JSON.parse(data);
            var userID = dataJSON.result_match.user_id;
            var socketID = current_sockets['user-' + userID];
            console.log('data new : ' + JSON.stringify(current_sockets));
            console.log('user id: ' + socketID);
            io.to(socketID).emit('notification', data);
        }
    });

    socket.on('updateSocket', function (data) {
        current_sockets['user-' + data] = socket.id;
        console.log('socket all: ' + JSON.stringify(current_sockets));
        var socketID = current_sockets['user-' + data];
        console.log('update socket ....: ' + socketID);
    });

    socket.on('disconnect', function() {
        var key = null;
        for (var k in current_sockets){
            if (current_sockets[k] === socket.id){
                key = k;
                break;
            }
        }
        if (key != null)
            delete current_sockets[key];
        console.log('socket dis: ' + JSON.stringify(current_sockets));
        redisClient.quit();
    });

});
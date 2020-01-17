async function main() {
  const process = require('child_process');   
  var ls = process.spawn('KUBECTL.bat');
  ls.stdout.on('data', function (data) {
    var str = String.fromCharCode.apply(null, data);
    console.log(str);
  });
  ls.stderr.on('data', function (data) {
    var str = String.fromCharCode.apply(null, data);
    console.log(str);
    //console.log(data);
  });
  ls.on('close', function (code) {
        if (code == 0)
          console.log('Stop');
        else
          console.log('Start');
  });
  };
  
  main();
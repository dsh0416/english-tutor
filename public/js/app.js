var mic, fft;
function setup() {
    var myCanvas = createCanvas(250,200);
    myCanvas.parent('fft');
    noFill();

    mic = new p5.AudioIn();
    mic.start();
    fft = new p5.FFT();
    fft.setInput(mic);
}

function draw() {
    background(200);

    var spectrum = fft.analyze();

    beginShape();
    for (i = 0; i<spectrum.length; i++) {
        vertex(i, map(spectrum[i], 0, 255, height, 0) );
    }
    endShape();
}

$(document).ready(function(){
    var app = new Vue({
        el: '#app',
        data: {
            title: 'AlphaPro',
            progress: '50',
            dic: [],
            learning: {},
            visible: {
                welcome: true,
                flashcard: false
            }
        },
        methods: {
            learn: function(word){
                this.learning = word;
                this.title = 'Flashcard: ' + this.learning.word;
                this.visible.welcome = false;
                this.visible.flashcard = true;
            }
        }
    });

    $.ajax({
        type: 'GET',
        url: '/dic/list',
        success: function(data){
            app.dic = data;
        }
    });

});
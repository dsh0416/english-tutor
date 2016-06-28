class DicController
  def self.list
    [
        {
            word: 'apple',
            passed: true,
            explanation: 'the round fruit of a tree of the rose family, which typically has thin green or red skin and crisp flesh.',
            voice: '../audio/apple.mp3',
            img: '../img/apple.jpg',
            model: 'function(arr){return 0.8;}'
        },
        {
            word: 'encyclopedia',
            passed: false,
            explanation: 'a book or set of books giving information on many subjects or on many aspects of one subject and typically arranged alphabetically.',
            voice: '../audio/encyclopedia.mp3',
            img: '../img/encyclopedia.jpg',
            model: 'function(arr){return 0.2;}'
        }
    ]
  end
end
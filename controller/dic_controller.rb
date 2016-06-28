class DicController
  def self.list
    {
        apple: {
            passed: true,
            voice: '',
            img: '',
            model: 'function(arr){return 0.8;}'
        },
        encyclopedia: {
            passed: false,
            voice: '',
            img: '',
            model: 'function(arr){return 0.2;}'
        }
    }
  end
end
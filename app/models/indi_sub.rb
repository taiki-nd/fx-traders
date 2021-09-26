class IndiSub < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Adaptive Moving Average' },
    { id: 3, name: 'Average Directional Movement Index' },
    { id: 4, name: 'Average Directional Movement Index Wilder' },
    { id: 5, name: 'Bollinger Bands' },
    { id: 6, name: 'Double Exponential Moving Average' },
    { id: 7, name: 'Envelopes' },
    { id: 8, name: 'Fractal Adaptive Moving Average' },
    { id: 9, name: 'Ichimoku Kinko Hyo' },
    { id: 10, name: 'Moving Average' },
    { id: 11, name: 'Parabolic SAR' },
    { id: 12, name: 'Standard Deviation' },
    { id: 13, name: 'Triple Exponential Moving Average' },
    { id: 14, name: 'Variable Index Dynamic Average' },
    { id: 15, name: 'Average True Renge' },
    { id: 16, name: 'Bears Power' },
    { id: 17, name: 'Bulls Power' },
    { id: 18, name: 'Chaikin Oscillator' },
    { id: 19, name: 'Commodity Channel Index' },
    { id: 20, name: 'DeMarker' },
    { id: 21, name: 'Force Index' },
    { id: 22, name: 'MACD' },
    { id: 23, name: 'Momentum' },
    { id: 24, name: 'Moving Average Of Oscillator' },
    { id: 25, name: 'RSI' },
    { id: 26, name: 'Relative Vigor Index' },
    { id: 27, name: 'Stochastic Oscillator' },
    { id: 28, name: 'Triple Exponential Average' },
    { id: 29, name: 'Williams % Range' },
    { id: 30, name: 'Accumulation/Distribution' },
    { id: 31, name: 'Money Flow Index' },
    { id: 32, name: 'On Balance Volume' },
    { id: 33, name: 'Volumes' },
    { id: 34, name: 'Accelerator Oscillator' },
    { id: 35, name: 'Alligator' },
    { id: 36, name: 'Awesome Oscillator' },
    { id: 37, name: 'Fractals' },
    { id: 38, name: 'Gator Oscillator' },
    { id: 39, name: 'Market Facilitation Index' },
    { id: 40, name: 'その他' }
  ]
 
   include ActiveHash::Associations
   has_many :records
   has_many :rules
 
end
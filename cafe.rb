# ! /usr/bin/env ruby
# frozen_string_literal: true

DRINKS = [
  { name: 'コーヒー', price: '300' },
  { name: 'カフェラテ', price: '400' },
  { name: 'チャイ', price: '460' },
  { name: 'エスプレッソ', price: '340' },
  { name: '緑茶', price: '450' }
].freeze

FOODS = [
  { name: 'チーズケーキ', price: '460' },
  { name: 'アップルパイ', price: '520' },
  { name: 'ホットサンド', price: '410' }
].freeze

def show_menus(menus)
  menus.each.with_index(1) do |menu, i|
    puts "(#{i})#{menu[:name]}: #{menu[:price]}円"
  end
end

def take_order(menus)
  print '>'
  order_number = gets.to_i
  return if order_number.zero?

  puts "#{menus[order_number - 1][:name]}(#{menus[order_number - 1][:price]}円)ですね。"
  menus[order_number - 1][:price]
end

puts 'bugカフェへようこそ！ご注文は？ 番号でどうぞ'
show_menus(DRINKS)
price1 = take_order(DRINKS).to_i

puts 'フードメニューはいかがですか?'
show_menus(FOODS)
price2 = take_order(FOODS).to_i

total = price1 + price2
puts "お会計は#{total}円になります。" unless total.zero?
puts 'ありがとうございました！'

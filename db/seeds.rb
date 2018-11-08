# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(id: 1, email: "myang215@gmail.com", password: "12345", password_confirmation: "12345", name: "Roh Myunghee", nickname: "myang", age: 25, sex: "female", career: 0, position: "junior")
User.create(id: 2, email: "optimushwang@gmail.com", password: "12345", password_confirmation: "12345", name: "Hwang Minhyun", nickname: "optimushwang", age: 24, sex: "male", career: 8, position: "senior")

Category.create(id: 1, content: "음악")
Category.create(id: 2, content: "IT")
Category.create(id: 3, content: "요리")
Category.create(id: 4, content: "자기관리")

Post.create(id: 1, user_id: 1, category_id: 2, title: "코딩 가르쳐 드려용", content: "비전공자 환영! 쉽게 알려 드립니당:)", image: "")
Post.create(id: 2, user_id: 2, category_id: 1, title: "코인 노래방 화음봇", content: "그대 목소리에 화음 얹어 드려요 ㅎㅎ", image: "")
Post.create(id: 3, user_id: 1, category_id: 3, title: "민현정식 만들기", content: "특별한 레시피는 없고 민현이를 사랑하는 마음을 담아 요리합니다", image: "")
Post.create(id: 4, user_id: 2, category_id: 4, title: "방청소 도와드립니다", content: "먼지가 많으면 미녀니 피부가 간지러워요 ㅠㅁㅠ", image: "")
Post.create(id: 5, user_id: 1, category_id: 2, title: "파이썬 강좌 개설", content: "두 번째 코딩 클래스", image: "")
Post.create(id: 6, user_id: 2, category_id: 1, title: "노래방 앉아서 즐기기", content: "분위기 띄우지 않아도.. 편하게 즐겨요..", image: "")
Post.create(id: 7, user_id: 1, category_id: 3, title: "라면 맛있게 끓이기", content: "라면의 생명은 물 조절", image: "")
Post.create(id: 8, user_id: 2, category_id: 4, title: "정리봇 미녀니", content: "좁은 공간에 챡챡 정리하기", image: "")
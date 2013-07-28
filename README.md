## Ba chú heo con

![3 chú heo con](https://github.com/joneslee85/ba_chu_heo_con.rb/raw/master/header.jpg)

Thông qua câu chuyện ngụ ngôn ba chú heo con, tôi muốn hướng dẫn bạn viết một chương trình Ruby theo phương pháp TDD, sau đó tôi sẽ refactor lại theo kiểu BDD. Hi vọng nó sẽ giúp bạn hiểu sự khác biệt của 2 trường phái lập trình này.

Mã nguồn của 2 cách được lưu trong thư mục TDD và BDD. Tôi viết cả hai với Ruby 1.9.3
và test với minitest. Để chạy test như sau:

```bash
ruby ba_chu_heo_con_spec.rb
```

### Nội dung truyện

__LƯU Ý__: truyện không phù hợp với trẻ con!

Truyện kể rằng có ba chú heo con sống rất hạnh phúc
với nhau.

* Heo anh cả rất cẩn thận và kĩ tính.
* Heo anh nhì thì thực dụng nhưng chủ quan.
* Heo út thì rất bất cẩn và lười biếng.

Nghe tin sói dữ từ khu rừng kế bên đang reo bão
khắp nơi và đã tàn sát các chú heo ở làng bên.
Ba chú heo của chúng ta rất lo lắng và quyết định
lên kế hoạch xây nhà để phòng thủ.

Heo út thì quá lười biếng, chú chỉ dựng tạm bợ
một cái chòi lợp *rơm* rồi lăn ra ngủ.

Heo anh nhì thì có kĩ hơn, chú dựng một căn nhà
bằng *gỗ* và nghĩ rằng làm sao sói kia có thể làm
gì được căn nhà của mình.

Heo anh cả cẩn thận dựng một căn nhà bằng *gạch* rất
là kiên cố. Chú nghĩ không thể chủ quan được, phải
chuẩn bị cho điều xấu nhất có thể xảy ra.

Rồi đến một ngày sói ta mò đến được nhà của ba chú.

Sói gõ cửa nhà chú heo út và tìm cách dụ dỗ
chú mở cửa, nhưng bị từ chối. Sói tức giận hít một
hơi thật dài rồi thổi tung cái chòi rơm. Kết cục thật
bi thảm, chú heo bị sói xé xác ăn thịt ngay tại chỗ.

Vẫn chưa no, sói tiếp tục gõ cửa nhà chú heo anh nhì.
Sói lại dở lại chiêu cho kẹo dụ khị nhưng có lẽ tài
năng của sói chỉ đủ dụ trẻ con chứ không dụ được các
chú heo của chúng ta. Sói lại bị từ chối. Tức giận
sói hít một hơi rồi thổi phù vào nhà gỗ. Nhà có bị
xoay chuyển. Sói thử lại lần nữa với một hơi dài hơn.
Nhà gỗ đổ xụp trước gió lớn. Chỉ còn lại chú heo nhì
đang run rẩy van xin tha mạng. Trong ban đêm tĩnh
mịch, tiếng kêu cứu của chú vang xa nhưng tiếc rằng
không ai có thể giúp được.

Đối với cái dạ dày vô đáy của sói, có lẽ 2 chú heo
chưa thấm vào đâu. Sói ta tiếp tục chuyển qua tấn
công nhà chú heo anh cả. Lần này sói không dụ dỗ
mà đi thẳng ngay vào vấn đề, đề nghị heo anh cả đầu
hàng thì sói hứa sẽ giết chú một cách nhân đạo nhất,
không thì sói sẽ thổi tung nhà rồi dã man lóc thịt
chú. Heo anh cả từ chối ưu sách của sói, thêm vào đó
còn doạ sẽ giết chết sói. Sói không chần chừ, hít một
hơi rồi thổi vào nhà gạch. Ngạc nhiên thay, nha không
hề xoay suyển. Sói thổi lần hai mạnh hơn, vẫn không hề
khiên nhà anh cả di chuyển dù là một li. Rồi lần ba,
lần bốn, lần năm, với sức sức gió tăng dần nhưng ngôi
nhà bằng gạch vẫn đứng nguyên. Cho đến khi sói hoàn
toàn kiệt sức, lăn đùng ra đất thở hổn hển. Nhân thời
cơ sói đang hồi sức, heo anh cả vác rìu ra và… một tiếng
phập. Đầu sói lìa khỏi xác. Heo anh cả dùng dao mổ bụng
sói ra, hi vọng cứu được hai em nhưng thực tế những gì
sót lại chỉ là xương và thịt. Nếu heo út và heo anh nhì
cẩn thận hơn thì đã không phải cùng chia sẻ số phận hẩm hiu
này.
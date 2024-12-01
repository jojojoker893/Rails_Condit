# Ruby on Rails 

Conduit と同じ見た目・機能のサイトを Rails で実装します。

*ステップ1
1. Home、Create、Edit、Article の HTML が ERB ファイルとして作成されている
2. 各画面に CSS が適用されている
3. 各ページにアクセスできる

*ステップ2
1. Home 画面の記事一覧の下に「Create」ボタンを配置し、ボタンを押すと Create 画面に遷移する
2. Create 画面で「Publish Article」を押すと、入力した内容がデータベースに保存され、Home 画面のリストに表示される
3. Home 画面の記事をクリックすると、該当の記事の Article 画面に遷移する
4. Article 画面で「Edit Article」ボタンを押すと Edit 画面に遷移し、各項目には記事の内容が入力済みで表示される
5. Edit 画面で内容を変更して「Publish Article」を押すと、データベースが更新され、Home 画面でも更新後の内容が表示される
6. 「Delete Article」ボタンを押すと記事がデータベースから削除され、Home 画面のリストからも削除される

*ステップ3
1. Authentication (Sign In) と Authentication (Sign Up) の HTML を ERB ファイルとして作成できている
2. 上記 2 つの画面に CSS が適用されている
3. 各ページにアクセスできる

*ステップ4
1. Authentication (Sign In) 画面でメールアドレスとパスワードを入力し、「Sign In」を押すとログイン処理が実行される
2. Authentication (Sign Up) 画面でメールアドレスとパスワードを入力し、「Sign Up」を押すとユーザー登録処理が実行される
3. ログイン処理またはユーザー登録処理が成功した場合、Home 画面に遷移する
4. Home 画面と Article 画面に、ログイン情報に基づいて著者名が表示される
5. Article 画面では、認証情報に基づき、著者のみ「Edit Article」ボタンが表示され、著者だけが記事を編集できる
6. Article 画面では、認証情報に基づき、著者のみ「Delete Article」ボタンが表示され、著者だけが記事を削除できる
7. Home 画面に表示される記事の数を最大 5 件とし、ページネーションを実装して次の 5 件にアクセスできるようにする

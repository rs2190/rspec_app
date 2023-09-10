# rspec spec/test_spec.rb で起動。

# rspac　の　使い方
# https://qiita.com/uchiko/items/d34c5d1298934252f58f

# describe '文字列' do ~ end ・・・テストのグループ
describe '四則演算' do

  # context '文字列' do ~ end ・・・特定の条件のテストメソッド（テスト失敗の時にコマンドで出てくる。）
  context '足し算１' do

    # example（it） '文字列' do ~ end ・・・アウトプット(テストと具体的な内容を記述する)
    # exampleとitには、アウトプットが何かを記述する。日本語で記述するときはexampleを使う。
    # it "is 〜やit { should be 〜 }のような形で書きたい場合はitを使う。
    it '1 + 1 は 2 になる' do

      # expect ・・・（）内に期待値を記述する
      # to ・・・ 期待している値が「~であること」を意する。(逆の場合はnot_to)
      # eq (イコール) ・・・ eqに続く値と、expectの期待値が同値であるかを判定する。
      expect(1 + 1).to eq 2

    end

  end

  context '足し算２' do

    it '1 + 1 は 2 になる' do

      # 失敗
      expect(1 + 1).to eq 3

      # 成功
      # expect(1 + 1).not_to eq 3

    end

  end

end

# 成功時

# ec2-user:~/environment/rspec_app (master) $  rspec spec/test_spec.rb
# ..

# Finished in 0.0044 seconds (files took 0.08653 seconds to load)
# 2 examples, 0 failures


# 失敗時

# ec2-user:~/environment/rspec_app (master) $  rspec spec/test_spec.rb
# .F

# Failures:

#   1) 四則演算 足し算２ 1 + 1 は 2 になる
#     Failure/Error: expect(1 + 1).to eq 3

#       expected: 3
#             got: 2

#       (compared using ==)
#     # ./spec/test_spec.rb:31:in `block (3 levels) in <top (required)>'

# Finished in 0.03259 seconds (files took 0.09236 seconds to load)
# 2 examples, 1 failure

# Failed examples:

# rspec ./spec/test_spec.rb:28 # 四則演算 足し算２ 1 + 1 は 2 になる
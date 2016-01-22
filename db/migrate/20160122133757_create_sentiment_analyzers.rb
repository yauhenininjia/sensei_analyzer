class CreateSentimentAnalyzers < ActiveRecord::Migration
  def change
    create_table :sentiment_analyzers do |t|

      t.timestamps null: false
    end
  end
end

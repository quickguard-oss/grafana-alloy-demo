class DiceController < ApplicationController
  def roll
    roll_num = rand(6) + 1

    # 出目を Tracesシグナルに乗せる。
    OpenTelemetry::Trace.current_span.add_attributes(
      'roll' => roll_num
    )

    # 雑にファイルに吐く。
    Logger.new(
      File.join(Rails.root, 'log/dice.log')
    ).info("サイコロの出目は #{roll_num.to_s} でした。")

    render json: roll_num.to_s
  end
end

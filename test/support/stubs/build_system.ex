defmodule SlackCoder.Stubs.BuildSystem do
  defmodule Travis do
    alias SlackCoder.BuildSystem.Job
    alias SlackCoder.BuildSystem.Build

    def build_info(_owner, _repo, _build_id) do
      [
        %Build{id: 123, result: :failure}
      ]
    end
    def job_log(_build, pr) do
      %Job{id: 4, rspec_seed: "90872", rspec: [{"./spec/some/file.rb", "32", "The test name"}], cucumber_seed: "27832", cucumber: [{"features/some.feature", "14", "The cucumber test"}]}
      |> SlackCoder.BuildSystem.record_failure_log("the really long failure log output...", pr)
    end
  end
  defmodule CircleCI do
    alias SlackCoder.BuildSystem.Job
    alias SlackCoder.BuildSystem.Build

    def build_info(_owner, _repo, _build_id) do
      [
        %Build{id: 123, result: :failure}
      ]
    end
    def job_log(_build, pr) do
      %Job{id: 4, rspec_seed: "90872", rspec: [{"./spec/some/file.rb", "32", "The test name"}], cucumber_seed: "27832", cucumber: [{"features/some.feature", "14", "The cucumber test"}]}
      |> SlackCoder.BuildSystem.record_failure_log("the really long failure log output...", pr)
    end
  end
  defmodule Semaphore do
    alias SlackCoder.BuildSystem.Job
    alias SlackCoder.BuildSystem.Build

    def build_info(_owner, _repo, _build_id) do
      [
        %Build{id: 123, result: :failure}
      ]
    end
    def job_log(_build, pr) do
      %Job{id: 4, rspec_seed: "90872", rspec: [{"./spec/some/file.rb", "32", "The test name"}], cucumber_seed: "27832", cucumber: [{"features/some.feature", "14", "The cucumber test"}]}
      |> SlackCoder.BuildSystem.record_failure_log("the really long failure log output...", pr)
    end
  end
end

require 'task'
require 'rspec'
require 'pg'
require 'spec_helper'


describe Task do
  it 'is the same task if it has the same name' do
    task1 = Task.new('learn SQL',1)
    task2 = Task.new('learn SQL',1)
    expect(task1).to eq task2
  end

  it 'is initialized with a name' do
    task = Task.new('learn SQL',1)
    expect(task).to be_an_instance_of Task
  end

  it 'will read out the name' do
    task = Task.new('learn SQL',1)
    expect(task.name).to eq 'learn SQL'
  end

  it 'starts off with no tasks' do
    task = Task.new('learn SQL',1)
    expect(Task.all).to eq []
  end

  it 'lets you sav  e tasks to the database' do
    task = Task.new('learn SQL',1)
    task.save
    expect(Task.all).to eq [task]
  end
end

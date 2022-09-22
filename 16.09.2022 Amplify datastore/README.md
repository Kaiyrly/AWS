# Amplify Datastore

Todo app implemented using basic flutter features and uses AWS Amplify datastore to save the todolist in database, and sync data between database and local machine.

## References

* This example uses the same example code provided on this website, https://docs.amplify.aws/start/getting-started/add-api/q/integration/flutter/



## Features used in the example

### Save data

To save data from DataStore, we pass the model instance to Amplify.DataStore.save()

### Delete data

To delete data from DataStore, we pass the model instance to Amplify.DataStore.delete()


##Complatibility test

| Android Emulator | ios Emulator| iPhone 11(iOS 16) | macOs (12.5.1)| Chrome |
|:--------------|:--------------:|:--------------:|:--------------:|:--------------:|
|O|O|O|x|x|

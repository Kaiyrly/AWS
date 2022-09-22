# amplified_todo

Todo app implemented using basic flutter features and uses AWS Amplify datastore to save the todolist in database, and sync data between database and local machine.

## References

* This example uses the same example code provided on this website, https://docs.amplify.aws/start/getting-started/add-api/q/integration/flutter/

* For more information on InheritedWidget, visit Flutter's website, https://docs.amplify.aws/lib/datastore/getting-started/q/platform/flutter/


## Features used in the example

### Save data

To save data from DataStore, we pass the model instance to Amplify.DataStore.save()

### Delete data

To delete data from DataStore, we pass the model instance to Amplify.DataStore.delete()


##Complatibility test

| Android Emulator | ios Emulator| macOs (12.5.1)| Chrome |
|:--------------|:--------------:|:--------------:|:--------------:|
|O|?|x|x|

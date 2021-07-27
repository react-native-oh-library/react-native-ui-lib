# Contributing
If you got here it means you want to dedicate some of your time and help us with making this library better.  
So first, thank you ❤️

When contributing to this repository, please first discuss the change you wish to make via [issue](https://github.com/wix/react-native-ui-lib/issues/new/choose),
[Discord channel](https://discord.gg/2eW4g6Z), or any other method with the owners of this repository before making a change. 

## Pull Request Process

1. First make sure the environment is working and synced with master. For installation details go [here](https://github.com/wix/react-native-ui-lib/blob/master/markdowns/getting-started/setup.md#demo-app)
2. Before submitting a PR we suggest running `npm run prepush` command that verifies lint, TS and tests were not broken.
3. Please don't change our PR template.
- 3.1 In descripton add everything that can help the reviewer and ease the reviewing process. 
- 3.2 In the changelog it's importatnt a message for the library users - this message will be included in our release notes
4. We try to make the PR review process as quick as possible, please be patient



### Code Standards

- Readability and clean code above all - we believe a clean code is easier to maintain and refactor when needed. 
- Deciding on an API is not trivial but we always aim to keep it generic and clear - feel free to consult with us.
- Our documentation is derived from our components' prop comments, make sure to add a clear description when adding new props. 
- When possible, consider adding tets for a new functionality you add.
- 


## Typescript Status
Currently most of our code is migrated to typescript though we still have some leftovers of javascript code and manual typings.  
Till we complete the migration you require to do the following for new TS files

Before pushing new code make sure to run `npm run build:dev` - this check for TS errors and create appropriate declarations (`d.ts`) files under generatedTypes folder. Make sure to push these files as well!
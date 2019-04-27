//
//  CollectionViewController.m
//  ImageCollecion
//
//  Created by Esraa Hassan on 4/26/19.
//  Copyright © 2019 Sahar. All rights reserved.
//

#import "CollectionViewController.h"
#import <SDWebImage/UIImageView+WebCache.h>
#import "CollectionViewCell.h"
@interface CollectionViewController ()

@end

@implementation CollectionViewController{
    NSMutableArray * urls ;
    NSMutableData  * dataRec ;
    NSString * webServiceUrlStr ;
    NSURL * url ;
    NSURLRequest * request;
    NSURLConnection * conn;
}

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];

    webServiceUrlStr = @"https://api.androidhive.info/json/movies.json" ;
    url = [NSURL URLWithString:webServiceUrlStr];
    request = [NSURLRequest requestWithURL:url];
    
    conn = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [conn start];

  /*  _collView.delegate = self;
    _collView.dataSource = self;
   */
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
  // [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete implementation, return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of items
    return [urls count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {


    CollectionViewCell *cell =  [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
   // cell.imgView.image = [UIImage imageNamed:@"woman1.png"];
    [cell.imgView sd_setImageWithURL:[NSURL URLWithString:[urls objectAtIndex:indexPath.row]]
                    placeholderImage:[UIImage imageNamed:@"woman1.png"]];


    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response{
    dataRec =[NSMutableData new];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data{
    [dataRec appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection{
    NSArray * films = [NSJSONSerialization JSONObjectWithData:dataRec options:NSJSONReadingAllowFragments error:nil];
    urls = [NSMutableArray new];
    for(int i=0;i<[films count];i++){
        NSString * img = [[films objectAtIndex:i] objectForKey:@"image"];
        [urls addObject:img];
        NSLog(@"%@",[urls objectAtIndex:i]);
    }
    
}

@end

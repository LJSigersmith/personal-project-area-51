//
//  MapViewController.m
//  Area51
//
//  Created by LJ Sigersmith on 7/6/15.
//  Copyright (c) 2015 LJ Sigersmith. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController



- (void)viewDidLoad {
    mapView.delegate = self;
    gameLocation = @"None";
    if ([gameLocation isEqual:@"None"]) {
        coordinate = CLLocationCoordinate2DMake(37.2350, -115.8111);
        MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coordinate, 1000, 1000);
        [mapView setRegion:region animated:YES];
        // Add an annotation
        MKPointAnnotation *point = [[MKPointAnnotation alloc] init];
        
        point.coordinate = coordinate;
        point.title = @"Area 51 Research Department";
        point.subtitle = @"This is where it all started. Where you used to work, too.";
        [mapView addAnnotation:point];
        

    }
    [super viewDidLoad];
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

@end

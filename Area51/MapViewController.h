//
//  MapViewController.h
//  Area51
//
//  Created by LJ Sigersmith on 7/6/15.
//  Copyright (c) 2015 LJ Sigersmith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController <MKMapViewDelegate> {
    
    CLLocationCoordinate2D coordinate;
    CLLocationDegrees lat;
    CLLocationDegrees lon;
    IBOutlet MKMapView *mapView;
    NSString *gameLocation;
    NSString *pinColor;
    
}

@end


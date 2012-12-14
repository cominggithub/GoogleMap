//
//  ViewController.m
//  GoogleMap
//
//  Created by Coming on 12/12/13.
//  Copyright (c) 2012年 Coming. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

GMSMapView *mapView_;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    GMSCamera camera = GMSCameraMake(-33.8683, 151.2086, 6);
    
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    
    mapView_.myLocationEnabled = YES;
    self.view = mapView_;
    

    GMSMarkerOptions *options = [[GMSMarkerOptions alloc] init];
    options.position = CLLocationCoordinate2DMake(-33.8683, 151.2086);
    options.title = @"Sydney";
    options.snippet = @"Australia";
    [mapView_ addMarkerWithOptions:options];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    /*
    [super viewWillAppear:animated];
    [mapView_ startRendering];
    */
}

- (void)viewWillDisappear:(BOOL)animated
{
    /*
    [mapView_ stopRendering];
    [super viewDidDisappear:animated];
    */ 
}
@end

INSERT INTO organization (name, description, logo) 
VALUES (
  'fitfam', 
  'A free fitness community that believes that fitness should be available to all, no matter who your are or where you are.',
  'https://static1.squarespace.com/static/5a89ce98010027b3a10ec5af/t/5a89d9e441920223d0960bff/1529640041534/'
),(
  'RunnersHai', 
  'A Shanghai based running group which is all about fitness and fun',
  'http://mnexo.dk/____impro/1/onewebmedia/Logo1.png?etag=W%2F%22c578-59bbab1a%22&sourceContentType=image%2Fpng&ignoreAspectRatio&resize=169%2B169'
);

INSERT INTO location (name, address, description)
VALUES (
  'West Bund', 
  'Dong''an Rd & Longteng Ave',
  'A stretch of area along the western bund that includes facilities such as a running path and an outdoor rock-climbing structure.'
),
(
  'Jing''an Workers Stadium',
  '888 Chang Ping Rd',
  'An outdoor stadium with football field, running track, pull-up and dip bars'
);

INSERT INTO event (name, description, start_time, end_time, organization_id, location_id)
VALUES (
  'Morning Yoga',
  'Early morning yoga sessions to help you start your day off right',
  '2018-07-12 05:30:00',
  '2018-07-12 06:30:00',
  (SELECT id FROM organization WHERE name='fitfam'),
  (SELECT id FROM location WHERE name='West Bund')
),(
  '8km Run ',
  'Evening run at the West Bund starting from runners hub',
  '2018-07-13 19:30:00',
  '2018-07-13 20:30:00',
  (SELECT id FROM organization WHERE name='RunnersHai'),
  (SELECT id FROM location WHERE name='West Bund')
),(
  'Track Workout',
  'Increase your speed to some good track training ',
  '2018-07-15 07:30:00',
  '2018-07-15 08:30:00',
  (SELECT id FROM organization WHERE name='RunnersHai'),
  (SELECT id FROM location WHERE name='Jing''an Workers Stadium')
);



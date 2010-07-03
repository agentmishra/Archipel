/*  
 * TNExtendedContactObject.j
 *    
 * Copyright (C) 2010 Antoine Mercadal <antoine.mercadal@inframonde.eu>
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 * 
 * You should have received a copy of the GNU Affero General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */


@import <Foundation/Foundation.j>
@import <AppKit/AppKit.j>

@implementation TNExtendedContact: CPObject
{
    CPString    _nickname   @accessors(property=nickname);
    CPString    _fullJID    @accessors(property=fullJID);
    BOOL        _selected   @accessors(setter=setSelected:);

    CPImage     _imageSelected;
}

- (id)initWithNickName:(CPString)aNickname fullJID:(CPString)aFullJID
{
    if (self = [super init])
    {
        _nickname       = aNickname;
        _fullJID        = aFullJID;
        _selected       = NO;
        _imageSelected  = [[CPImage alloc] initWithContentsOfFile:[[CPBundle mainBundle] pathForResource:@"button-icons/button-icon-check.png"] size:CPSizeMake(12, 12)];
    }
    
    return self;
}

- (CPImage)isSelected
{
    if (_selected)
    {
        return _imageSelected;
    }
    return nil;
}

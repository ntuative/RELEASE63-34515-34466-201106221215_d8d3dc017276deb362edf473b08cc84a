package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_1147:String = "avatar";
      
      private static const const_725:Number = -0.01;
      
      private static const const_724:Number = -0.409;
      
      private static const const_1146:int = 2;
      
      private static const const_1656:Array = [0,0,0];
      
      private static const const_1684:int = 3;
       
      
      private var var_713:AvatarVisualizationData = null;
      
      private var var_579:Map;
      
      private var var_590:Map;
      
      private var var_1350:int = 0;
      
      private var var_1018:Boolean;
      
      private var _figure:String;
      
      private var var_1093:String;
      
      private var var_1351:int = 0;
      
      private var var_714:BitmapDataAsset;
      
      private var var_1107:BitmapDataAsset;
      
      private var var_2070:int = -1;
      
      private var var_2112:int = -1;
      
      private var var_2117:int = -1;
      
      private const const_1145:int = 0;
      
      private const const_2083:int = 1;
      
      private const const_2088:int = 2;
      
      private const const_2087:int = 3;
      
      private const const_1657:int = 4;
      
      private var var_1873:int = -1;
      
      private var var_301:String = "";
      
      private var var_1658:String = "";
      
      private var var_2113:Boolean = false;
      
      private var var_2115:Boolean = false;
      
      private var var_2118:Boolean = false;
      
      private var var_1656:Boolean = false;
      
      private var var_630:Boolean = false;
      
      private var var_1629:int = 0;
      
      private var _danceStyle:int = 0;
      
      private var var_2111:int = 0;
      
      private var var_893:int = 0;
      
      private var var_891:int = 0;
      
      private var var_712:int = 0;
      
      private var var_1657:int = 0;
      
      private var var_1371:Boolean = false;
      
      private var var_2114:Boolean = false;
      
      private var var_1370:int = 0;
      
      private var var_892:int = 0;
      
      private var var_2116:Boolean = false;
      
      private var var_1369:int = 0;
      
      private var var_64:IAvatarImage = null;
      
      private var var_1145:Boolean;
      
      public function AvatarVisualization()
      {
         super();
         this.var_579 = new Map();
         this.var_590 = new Map();
         this.var_1018 = false;
      }
      
      override public function dispose() : void
      {
         if(this.var_579 != null)
         {
            this.resetImages();
            this.var_579.dispose();
            this.var_590.dispose();
            this.var_579 = null;
         }
         this.var_713 = null;
         this.var_714 = null;
         this.var_1107 = null;
         super.dispose();
         this.var_1145 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1145;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_713 = param1 as AvatarVisualizationData;
         createSprites(this.const_1657);
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number, param3:Boolean) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:* = false;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1.getUpdateID() != var_145)
         {
            _loc4_ = false;
            _loc5_ = false;
            _loc6_ = 0;
            _loc7_ = "";
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_180) > 0 && param3);
            if(_loc5_ != this.var_2113)
            {
               this.var_2113 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_293) > 0;
            if(_loc5_ != this.var_2115)
            {
               this.var_2115 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_283) > 0;
            if(_loc5_ != this.var_2118)
            {
               this.var_2118 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_782) > 0 && param3);
            if(_loc5_ != this.var_1656)
            {
               this.var_1656 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_610) > 0;
            if(_loc5_ != this.var_630)
            {
               this.var_630 = _loc5_;
               _loc4_ = true;
               this.updateTypingBubble(param2);
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_146);
            if(_loc6_ != this.var_1629)
            {
               this.var_1629 = _loc6_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_317);
            if(_loc7_ != this.var_301)
            {
               this.var_301 = _loc7_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_1017);
            if(_loc7_ != this.var_1658)
            {
               this.var_1658 = _loc7_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_630);
            if(_loc6_ != this._danceStyle)
            {
               this._danceStyle = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_509);
            if(_loc6_ != this.var_893)
            {
               this.var_893 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_375);
            if(_loc6_ != this.var_891)
            {
               this.var_891 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_279);
            if(_loc6_ != this.var_712)
            {
               this.var_712 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_219);
            if(_loc6_ != this.var_2070)
            {
               this.var_2070 = _loc6_;
               _loc4_ = true;
            }
            if(this.var_891 > 0 && param1.getNumber(RoomObjectVariableEnum.const_279) > 0)
            {
               if(this.var_712 != this.var_891)
               {
                  this.var_712 = this.var_891;
                  _loc4_ = true;
               }
            }
            else if(this.var_712 != 0)
            {
               this.var_712 = 0;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_463);
            if(_loc6_ != this.var_1370)
            {
               this.var_1370 = _loc6_;
               _loc4_ = true;
               this.updateNumberBubble(param2);
            }
            this.validateActions(param2);
            _loc7_ = param1.getString(RoomObjectVariableEnum.AVATAR_GENDER);
            if(_loc7_ != this.var_1093)
            {
               this.var_1093 = _loc7_;
               _loc4_ = true;
            }
            _loc8_ = param1.getString(RoomObjectVariableEnum.const_204);
            if(this.updateFigure(_loc8_))
            {
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_397);
            if(_loc6_ != this.var_2111)
            {
               _loc4_ = true;
            }
            var_145 = param1.getUpdateID();
            return _loc4_;
         }
         return false;
      }
      
      private function updateFigure(param1:String) : Boolean
      {
         if(this._figure != param1)
         {
            this._figure = param1;
            this.resetImages();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in this.var_579)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         for each(_loc1_ in this.var_590)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_579.reset();
         this.var_590.reset();
         this.var_64 = null;
         _loc2_ = getSprite(this.const_1145);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
            _loc2_.alpha = 255;
         }
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            this.var_1656 = false;
         }
         if(this.var_301 == "sit" || this.var_301 == "lay")
         {
            this.var_1657 = param1 / 2;
         }
         else
         {
            this.var_1657 = 0;
         }
         this.var_2114 = false;
         this.var_1371 = false;
         if(this.var_301 == "lay")
         {
            this.var_1371 = true;
            _loc2_ = int(this.var_1658);
            if(_loc2_ < 0)
            {
               this.var_2114 = true;
            }
         }
      }
      
      private function getAvatarImage(param1:Number, param2:int) : IAvatarImage
      {
         var _loc3_:* = null;
         var _loc5_:* = null;
         var _loc4_:String = "avatarImage" + param1.toString();
         if(param2 == 0)
         {
            _loc3_ = this.var_579.getValue(_loc4_) as IAvatarImage;
         }
         else
         {
            _loc4_ += "-" + param2;
            _loc3_ = this.var_590.getValue(_loc4_) as IAvatarImage;
            if(_loc3_)
            {
               _loc3_.forceActionUpdate();
            }
         }
         if(_loc3_ == null)
         {
            _loc3_ = this.var_713.getAvatar(this._figure,param1,this.var_1093,this);
            if(_loc3_ != null)
            {
               if(param2 == 0)
               {
                  this.var_579.add(_loc4_,_loc3_);
               }
               else
               {
                  if(this.var_590.length >= const_1684)
                  {
                     _loc5_ = this.var_590.remove(this.var_590.getKey(0));
                     if(_loc5_)
                     {
                        _loc5_.dispose();
                     }
                  }
                  this.var_590.add(_loc4_,_loc3_);
               }
            }
         }
         return _loc3_;
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean, param4:Boolean = false) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param4 || var_513 != param1.getUpdateID() || this.var_1873 != param2.updateId)
         {
            _loc5_ = param3;
            _loc6_ = param1.getDirection().x - param2.direction.x;
            _loc6_ = (_loc6_ % 360 + 360) % 360;
            _loc7_ = this.var_2070;
            if(this.var_301 == "float")
            {
               _loc7_ = _loc6_;
            }
            else
            {
               _loc7_ -= param2.direction.x;
            }
            _loc7_ = (_loc7_ % 360 + 360) % 360;
            if(_loc6_ != this.var_2112 || param4)
            {
               _loc5_ = true;
               this.var_2112 = _loc6_;
               _loc6_ -= 112.5;
               _loc6_ = (_loc6_ + 360) % 360;
               this.var_64.setDirectionAngle(AvatarSetType.const_41,_loc6_);
            }
            if(_loc7_ != this.var_2117 || param4)
            {
               _loc5_ = true;
               this.var_2117 = _loc7_;
               if(this.var_2117 != this.var_2112)
               {
                  _loc7_ -= 112.5;
                  _loc7_ = (_loc7_ + 360) % 360;
                  this.var_64.setDirectionAngle(AvatarSetType.const_58,_loc7_);
               }
            }
            var_513 = param1.getUpdateID();
            this.var_1873 = param2.updateId;
            return _loc5_;
         }
         return false;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_2083);
         this.var_714 = null;
         if(this.var_301 == "mv" || this.var_301 == "std")
         {
            _loc2_.visible = true;
            if(this.var_714 == null || param1 != var_102)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               if(param1 < 48)
               {
                  this.var_714 = this.var_64.getAsset("sh_std_sd_1_0_0");
                  _loc3_ = -8;
                  _loc4_ = -3;
               }
               else
               {
                  this.var_714 = this.var_64.getAsset("h_std_sd_1_0_0");
                  _loc3_ = -17;
                  _loc4_ = -7;
               }
               if(this.var_714 != null)
               {
                  _loc2_.asset = this.var_714.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            this.var_714 = null;
            _loc2_.visible = false;
         }
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.var_1107 = null;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_2088);
         if(this.var_630)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               this.var_1107 = this.var_713.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               this.var_1107 = this.var_713.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(this.var_301 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(this.var_301 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(this.var_1107 != null)
            {
               _loc2_.asset = this.var_1107.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function updateNumberBubble(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         var _loc3_:IRoomObjectSprite = getSprite(this.const_2087);
         if(this.var_1370 > 0)
         {
            _loc6_ = 64;
            if(param1 < 48)
            {
               _loc2_ = this.var_713.getAvatarRendererAsset("number_" + this.var_1370 + "_small_png") as BitmapDataAsset;
               _loc4_ = -6;
               _loc5_ = -52;
               _loc6_ = 32;
            }
            else
            {
               _loc2_ = this.var_713.getAvatarRendererAsset("number_" + this.var_1370 + "_png") as BitmapDataAsset;
               _loc4_ = -8;
               _loc5_ = -105;
            }
            if(this.var_301 == "sit")
            {
               _loc5_ += _loc6_ / 2;
            }
            else if(this.var_301 == "lay")
            {
               _loc5_ += _loc6_;
            }
            if(_loc2_ != null)
            {
               _loc3_.visible = true;
               _loc3_.asset = _loc2_.content as BitmapData;
               _loc3_.offsetX = _loc4_;
               _loc3_.offsetY = _loc5_;
               _loc3_.relativeDepth = -0.01;
               this.var_892 = 1;
               this.var_2116 = true;
               this.var_1369 = 0;
               _loc3_.alpha = 0;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         else if(_loc3_.visible)
         {
            this.var_892 = -1;
         }
      }
      
      private function animateNumberBubble(param1:int) : Boolean
      {
         var _loc5_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_2087);
         var _loc3_:int = _loc2_.alpha;
         var _loc4_:Boolean = false;
         if(this.var_2116)
         {
            ++this.var_1369;
            if(this.var_1369 < 10)
            {
               return false;
            }
            if(this.var_892 < 0)
            {
               if(param1 < 48)
               {
                  _loc2_.offsetY -= 2;
               }
               else
               {
                  _loc2_.offsetY -= 4;
               }
            }
            else
            {
               _loc5_ = 4;
               if(param1 < 48)
               {
                  _loc5_ = 8;
               }
               if(this.var_1369 % _loc5_ == 0)
               {
                  --_loc2_.offsetY;
                  _loc4_ = true;
               }
            }
         }
         if(this.var_892 > 0)
         {
            if(_loc3_ < 255)
            {
               _loc3_ += 32;
            }
            if(_loc3_ >= 255)
            {
               _loc3_ = 255;
               this.var_892 = 0;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         if(this.var_892 < 0)
         {
            if(_loc3_ >= 0)
            {
               _loc3_ -= 32;
            }
            if(_loc3_ <= 0)
            {
               this.var_892 = 0;
               this.var_2116 = false;
               _loc3_ = 0;
               _loc2_.visible = false;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         return _loc4_;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean, param4:Boolean) : void
      {
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:int = 0;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:* = null;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:int = 0;
         var _loc30_:int = 0;
         var _loc31_:* = null;
         var _loc32_:* = null;
         var _loc5_:IRoomObject = object;
         if(_loc5_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_713 == null)
         {
            return;
         }
         var _loc6_:IRoomObjectModel = _loc5_.getModel();
         var _loc7_:Number = param1.scale;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:int = this.var_893;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = this.updateModel(_loc6_,_loc7_,param3);
         if(this.animateNumberBubble(_loc7_))
         {
            increaseUpdateId();
         }
         if(_loc13_ || _loc7_ != var_102 || this.var_64 == null)
         {
            if(_loc7_ != var_102)
            {
               _loc9_ = true;
               this.validateActions(_loc7_);
            }
            if(_loc11_ != this.var_893)
            {
               _loc12_ = true;
            }
            if(_loc9_ || this.var_64 == null || _loc12_)
            {
               this.var_64 = this.getAvatarImage(_loc7_,this.var_893);
               if(this.var_64 == null)
               {
                  return;
               }
               _loc8_ = true;
               _loc16_ = getSprite(this.const_1145);
               if(_loc16_ && this.var_64 && this.var_64.isPlaceholder())
               {
                  _loc16_.alpha = 150;
               }
               else if(_loc16_)
               {
                  _loc16_.alpha = 255;
               }
            }
            if(this.var_64 == null)
            {
               return;
            }
            this.updateShadow(_loc7_);
            if(_loc9_)
            {
               this.updateTypingBubble(_loc7_);
               this.updateNumberBubble(_loc7_);
            }
            _loc10_ = this.updateObject(_loc5_,param1,param3,true);
            this.updateActions(this.var_64);
            var_102 = _loc7_;
         }
         else
         {
            _loc10_ = this.updateObject(_loc5_,param1,param3);
         }
         var _loc14_:Boolean = _loc10_ || _loc13_ || _loc9_;
         var _loc15_:Boolean = (this.var_1018 || this.var_1351 > 0) && param3;
         if(_loc14_)
         {
            this.var_1351 = const_1146;
         }
         if(_loc14_ || _loc15_)
         {
            increaseUpdateId();
            --this.var_1351;
            --this.var_1350;
            if(!(this.var_1350 <= 0 || _loc9_ || _loc13_ || _loc8_))
            {
               return;
            }
            this.var_64.updateAnimationByFrames(1);
            this.var_1350 = const_1146;
            _loc18_ = this.var_64.getCanvasOffsets();
            if(_loc18_ == null || _loc18_.length < 3)
            {
               _loc18_ = const_1656;
            }
            _loc17_ = getSprite(this.const_1145);
            if(_loc17_ != null)
            {
               _loc21_ = this.var_64.getImage(AvatarSetType.const_41,false);
               if(_loc21_ != null)
               {
                  _loc17_.asset = _loc21_;
               }
               if(_loc17_.asset)
               {
                  _loc17_.offsetX = -1 * _loc7_ / 2 + _loc18_[0];
                  _loc17_.offsetY = -_loc17_.asset.height + _loc7_ / 4 + _loc18_[1] + this.var_1657;
               }
               if(this.var_1371)
               {
                  if(this.var_2114)
                  {
                     _loc17_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc17_.relativeDepth = const_724 + _loc18_[2];
                  }
               }
               else
               {
                  _loc17_.relativeDepth = const_725 + _loc18_[2];
               }
            }
            _loc17_ = getSprite(this.const_2088);
            if(_loc17_ != null && _loc17_.visible)
            {
               if(!this.var_1371)
               {
                  _loc17_.relativeDepth = const_725 - 0.01 + _loc18_[2];
               }
               else
               {
                  _loc17_.relativeDepth = const_724 - 0.01 + _loc18_[2];
               }
            }
            this.var_1018 = this.var_64.isAnimating();
            _loc19_ = this.const_1657;
            for each(_loc20_ in this.var_64.getSprites())
            {
               if(_loc20_.id == const_1147)
               {
                  _loc17_ = getSprite(this.const_1145);
                  _loc22_ = this.var_64.getLayerData(_loc20_);
                  _loc23_ = _loc20_.getDirectionOffsetX(this.var_64.getDirection());
                  _loc24_ = _loc20_.getDirectionOffsetY(this.var_64.getDirection());
                  if(_loc22_ != null)
                  {
                     _loc23_ += _loc22_.dx;
                     _loc24_ += _loc22_.dy;
                  }
                  if(_loc7_ < 48)
                  {
                     _loc23_ /= 2;
                     _loc24_ /= 2;
                  }
                  _loc17_.offsetX += _loc23_;
                  _loc17_.offsetY += _loc24_;
               }
               else
               {
                  _loc17_ = getSprite(_loc19_);
                  if(_loc17_ != null)
                  {
                     _loc17_.capturesMouse = false;
                     _loc17_.visible = true;
                     _loc25_ = this.var_64.getLayerData(_loc20_);
                     _loc26_ = 0;
                     _loc27_ = _loc20_.getDirectionOffsetX(this.var_64.getDirection());
                     _loc28_ = _loc20_.getDirectionOffsetY(this.var_64.getDirection());
                     _loc29_ = _loc20_.getDirectionOffsetZ(this.var_64.getDirection());
                     _loc30_ = 0;
                     if(_loc20_.hasDirections)
                     {
                        _loc30_ = this.var_64.getDirection();
                     }
                     if(_loc25_ != null)
                     {
                        _loc26_ = _loc25_.animationFrame;
                        _loc27_ += _loc25_.dx;
                        _loc28_ += _loc25_.dy;
                        _loc30_ += _loc25_.directionOffset;
                     }
                     if(_loc7_ < 48)
                     {
                        _loc27_ /= 2;
                        _loc28_ /= 2;
                     }
                     if(_loc30_ < 0)
                     {
                        _loc30_ += 8;
                     }
                     else if(_loc30_ > 7)
                     {
                        _loc30_ -= 8;
                     }
                     _loc31_ = this.var_64.getScale() + "_" + _loc20_.member + "_" + _loc30_ + "_" + _loc26_;
                     _loc32_ = this.var_64.getAsset(_loc31_);
                     if(_loc32_ == null)
                     {
                        continue;
                     }
                     _loc17_.asset = _loc32_.content as BitmapData;
                     _loc17_.offsetX = -_loc32_.offset.x - _loc7_ / 2 + _loc27_;
                     _loc17_.offsetY = -_loc32_.offset.y + _loc28_ + this.var_1657;
                     if(this.var_1371)
                     {
                        _loc17_.relativeDepth = const_724 - 0.001 * spriteCount * _loc29_;
                     }
                     else
                     {
                        _loc17_.relativeDepth = const_725 - 0.001 * spriteCount * _loc29_;
                     }
                     if(_loc20_.ink == 33)
                     {
                        _loc17_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc17_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc19_++;
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_394,this.var_301,this.var_1658);
         if(this.var_1629 > 0)
         {
            param1.appendAction(AvatarAction.const_326,AvatarAction.const_1794[this.var_1629]);
         }
         if(this._danceStyle > 0)
         {
            param1.appendAction(AvatarAction.const_170,this._danceStyle);
         }
         if(this.var_2111 > 0)
         {
            param1.appendAction(AvatarAction.const_944,this.var_2111);
         }
         if(this.var_891 > 0)
         {
            param1.appendAction(AvatarAction.const_823,this.var_891);
         }
         if(this.var_712 > 0)
         {
            param1.appendAction(AvatarAction.const_804,this.var_712);
         }
         if(this.var_2113)
         {
            param1.appendAction(AvatarAction.const_367);
         }
         if(this.var_2118 || this.var_1656)
         {
            param1.appendAction(AvatarAction.const_653);
         }
         if(this.var_2115)
         {
            param1.appendAction(AvatarAction.const_278);
         }
         if(this.var_893 > 0)
         {
            param1.appendAction(AvatarAction.const_379,this.var_893);
         }
         param1.endActionAppends();
         this.var_1018 = param1.isAnimating();
         var _loc2_:int = this.const_1657;
         for each(_loc3_ in this.var_64.getSprites())
         {
            if(_loc3_.id != const_1147)
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.resetImages();
      }
   }
}

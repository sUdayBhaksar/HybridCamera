import UIKit
import HybridCamLib

open class RecordButton: UIView, RecordButtonKind {
   /**
    * Interaction call-back variables
    */
   open var onShortPressRelease: ShortPressReleased = defaultShortPressReleased
   open var onLongPressBegan: LongPressBegan = defaultLongPressBegan
   open var onLongPressRelease: LongPressReleased = defaultLongPressReleased
   /*UI*/
   open lazy var circle: RecordButton.Circle = createCircle()
   override init(frame: CGRect) {
      super.init(frame: RecordButton.rect)
      _ = circle/*Create the circle designs*/
      addGestureRecognizer()
   }
   /**
    * Boilerplate
    */
   @available(*, unavailable)
   public required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}

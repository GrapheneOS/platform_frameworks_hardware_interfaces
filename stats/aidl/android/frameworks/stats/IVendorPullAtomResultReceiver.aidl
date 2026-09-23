package android.frameworks.stats;

import android.frameworks.stats.VendorPullAtomReturnCode;
import android.frameworks.stats.VendorAtom;

@VintfStability
interface IVendorPullAtomResultReceiver  {
    oneway void pullFinished(int atomTag, VendorPullAtomReturnCode code, in List<VendorAtom> result);
}

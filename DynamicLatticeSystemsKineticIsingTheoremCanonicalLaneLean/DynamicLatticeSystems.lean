import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure DynamicLatticeAdmittedObject where
  lattice : Type
  topology : TopologicalSpace lattice
  spinState : lattice → ℤ₂
  localTransitionRates : lattice → Type
  detailedBalance : Prop
  reversibleMeasure : Prop
  conclusion : reversibleMeasure

def DynamicLatticeWitnessClosed (O : DynamicLatticeAdmittedObject) : Prop :=
  O.reversibleMeasure

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse
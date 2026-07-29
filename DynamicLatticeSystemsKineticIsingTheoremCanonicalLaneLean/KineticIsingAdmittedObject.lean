import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

structure LatticeSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure KineticIsingAdmittedObject where
  lattice : LatticeSpace
  spinConfig : Type
  dynamics : Type
  invariant : Prop
  glauberDynamics : Prop
  kawasakiDynamics : Prop
  equilibriumMeasure : Prop
  clusterExpansion : Prop
  conclusion : closureResult

def closureResult : Prop := True

def IsingWitnessClosed (O : KineticIsingAdmittedObject) : Prop :=
  O.invariant

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse
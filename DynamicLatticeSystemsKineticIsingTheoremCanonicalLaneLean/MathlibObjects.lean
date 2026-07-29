import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure AdmittedLattice where
  site : Type
  adjacency : site → site → Prop
  dimension : Nat
  finite : Prop
  adjacencyIrreflexive : Prop
  adjacencySymmetric : Prop

structure KineticIsingAdmittedObject where
  lattice : AdmittedLattice
  spinSpace : Type
  configurationSpace : Type
  hamiltonian : configurationSpace → ℝ
  dynamicsGenerator : configurationSpace → configurationSpace → ℝ
  detailedBalance : Prop
  ergodicity : Prop
  conclusion : detailedBalance ∧ ergodicity

def KineticIsingWitnessClosed (O : KineticIsingAdmittedObject) : Prop :=
  O.conclusion

end DynamicLatticeSystemsKineticIsingTheoremCanonicalLaneLean
end HautevilleHouse
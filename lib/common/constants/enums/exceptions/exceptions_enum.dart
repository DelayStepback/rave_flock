enum ExceptionsEnum {
  // -meets
  addMeet,
  deleteMeet,
  fetchPublicMeets,
  fetchBasketOfMeet,
  fetchUserMeets,
  createBasketToMeet,
  addToBasketItem,
  userTakeThisItem,
  failedToDeleteUserUseThisItem,
  failedToAddUserUseThisItem,
  changeGuestStatus,

  // for creating guest
  guestAlreadyExist,
  createGuest,

  fetchGuests,

  // -users
  // throw, if friends request doesn't need
  fetchUser,
  fetchUserFriends,
  alreadyFriends,
  usernameNotFound
}
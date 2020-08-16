Widget _getBoard() {
  return Container(
    padding: EdgeInsets.all(2),
    child: AspectRatio(
      aspectRatio: 1,
      child: Container(
        color: CustomStyles.nord3,
        child: GridView.count(
          crossAxisCount: globals.problem.board_size,
          childAspectRatio: 1,
          children: List.generate(
              globals.problem.board_size * globals.problem.board_size,
                  (index) {
                return _makeBoardButton(index);
              }),
        ),
      ),
    ),
  );
}

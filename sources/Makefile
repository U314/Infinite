NAME =	Infinite

ML =	point.ml	\
	space.ml	

MLI =	point.mli	\
	space.mli

CMI = $(MLI:.mli=.cmi)
CMO = $(ML:.ml=.cmo)
CMX = $(ML:.ml=.cmx)



OCAMLDPE = ocamldep
CAMLFLAGS = -w Aelz -warn-error A
OCAMLC = ocamlc $(CAMLFLAGS) nums.cma unix.cma
OCAMLOPT = ocamlopt $(CAMLFLAGS) nums.cmxa unix.cmxa
OCAMLDOC = ocamldoc -html -d $(ROOT)/doc


all:		.depend $(CMI) $(NAME) clean

byte:		.depend $(CMI) $(NAME).byte


$(NAME):	$(CMX)
		@$(OCAMLOPT) -o $@ $(CMX)
		@echo "[OK] $(NAME) linked"

$(NAME).byte:	$(CMO)
		@$(OCAMLC) -o $@ $(CMO)
		@echo "[OK] $(NAME).byte linked"

%.cmx:		%.ml
		@$(OCAMLOPT) -c $<
		@echo "[OK] [$<] builded"

%.cmo:		%.ml
		@$(OCAMLC) -c $<
		@echo "[OK] [$<] builded"

%.cmi:		%.mli
		@$(OCAMLC) -c $<
		@echo "[OK] [$<] builded"

documentation:  $(CMI)
		@$(OCAMLDOC) $(MLI)
		@echo "[OK] Documentation"


re:		fclean all


clean:
		@/bin/rm -f *.cm* *.o .depend *~
		@echo "[OK] clean"


fclean: 	clean
		@/bin/rm -f $(NAME) $(NAME).byte
		@echo "[OK] fclean"


.depend:
		@/bin/rm -f .depend
		@$(OCAMLDPE) $(MLI) $(ML) > .depend
		@echo "[OK] dependencies"

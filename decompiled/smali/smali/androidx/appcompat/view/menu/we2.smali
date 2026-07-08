.class public final Landroidx/appcompat/view/menu/we2;
.super Landroidx/appcompat/view/menu/m82;
.source "SourceFile"


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/util/Set;

.field public f:Ljava/util/Map;

.field public g:Ljava/lang/Long;

.field public h:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/o82;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/m82;-><init>(Landroidx/appcompat/view/menu/o82;)V

    return-void
.end method


# virtual methods
.method public final A(II)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/we2;->f:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/if2;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-static {p1}, Landroidx/appcompat/view/menu/if2;->b(Landroidx/appcompat/view/menu/if2;)Ljava/util/BitSet;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    return p1
.end method

.method public final x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final y(Ljava/lang/Integer;)Landroidx/appcompat/view/menu/if2;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/we2;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/we2;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/if2;

    return-object p1

    :cond_0
    new-instance v0, Landroidx/appcompat/view/menu/if2;

    iget-object v1, p0, Landroidx/appcompat/view/menu/we2;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroidx/appcompat/view/menu/if2;-><init>(Landroidx/appcompat/view/menu/we2;Ljava/lang/String;Landroidx/appcompat/view/menu/xf2;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/we2;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final z(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;
    .locals 52

    move-object/from16 v10, p0

    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p3 .. p3}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    iput-object v0, v10, Landroidx/appcompat/view/menu/we2;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, v10, Landroidx/appcompat/view/menu/we2;->e:Ljava/util/Set;

    new-instance v0, Landroidx/appcompat/view/menu/o4;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/o4;-><init>()V

    iput-object v0, v10, Landroidx/appcompat/view/menu/we2;->f:Ljava/util/Map;

    move-object/from16 v0, p4

    iput-object v0, v10, Landroidx/appcompat/view/menu/we2;->g:Ljava/lang/Long;

    move-object/from16 v0, p5

    iput-object v0, v10, Landroidx/appcompat/view/menu/we2;->h:Ljava/lang/Long;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/ks1;

    const-string v2, "_s"

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ks1;->b0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v11

    :goto_0
    invoke-static {}, Landroidx/appcompat/view/menu/gb2;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    iget-object v2, v10, Landroidx/appcompat/view/menu/we2;->d:Ljava/lang/String;

    sget-object v3, Landroidx/appcompat/view/menu/si1;->j0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/qf1;->D(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    move v13, v11

    :goto_1
    invoke-static {}, Landroidx/appcompat/view/menu/gb2;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    iget-object v2, v10, Landroidx/appcompat/view/menu/we2;->d:Ljava/lang/String;

    sget-object v3, Landroidx/appcompat/view/menu/si1;->i0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/qf1;->D(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v14, 0x1

    goto :goto_2

    :cond_3
    move v14, v11

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    iget-object v3, v10, Landroidx/appcompat/view/menu/we2;->d:Ljava/lang/String;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/m82;->u()V

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-static {v3}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "current_session_count"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_0
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->B()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "events"

    const-string v6, "app_id = ?"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v4, "Error resetting session-scoped event counts. appId"

    invoke-static {v3}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3, v0}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    if-eqz v14, :cond_5

    if-eqz v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    iget-object v2, v10, Landroidx/appcompat/view/menu/we2;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/lg1;->O0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    iget-object v3, v10, Landroidx/appcompat/view/menu/we2;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/lg1;->N0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e

    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    if-eqz v1, :cond_e

    iget-object v1, v10, Landroidx/appcompat/view/menu/we2;->d:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v3

    iget-object v4, v10, Landroidx/appcompat/view/menu/we2;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/lg1;->P0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v1}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v15}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/appcompat/view/menu/o4;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/o4;-><init>()V

    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v15, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/rs1;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    move-object/from16 v17, v3

    goto/16 :goto_8

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->o()Landroidx/appcompat/view/menu/i92;

    move-result-object v8

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/rs1;->Z()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Landroidx/appcompat/view/menu/i92;->N(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/q02;->x()Landroidx/appcompat/view/menu/q02$b;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/rs1$a;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/rs1$a;->t()Landroidx/appcompat/view/menu/rs1$a;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroidx/appcompat/view/menu/rs1$a;->u(Ljava/lang/Iterable;)Landroidx/appcompat/view/menu/rs1$a;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->o()Landroidx/appcompat/view/menu/i92;

    move-result-object v9

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/rs1;->b0()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v9, v11, v7}, Landroidx/appcompat/view/menu/i92;->N(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/rs1$a;->x()Landroidx/appcompat/view/menu/rs1$a;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroidx/appcompat/view/menu/rs1$a;->y(Ljava/lang/Iterable;)Landroidx/appcompat/view/menu/rs1$a;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/rs1;->Y()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Landroidx/appcompat/view/menu/js1;

    invoke-virtual {v12}, Landroidx/appcompat/view/menu/js1;->j()I

    move-result v16

    move-object/from16 v17, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v3, v17

    goto :goto_5

    :cond_a
    move-object/from16 v17, v3

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/rs1$a;->r()Landroidx/appcompat/view/menu/rs1$a;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroidx/appcompat/view/menu/rs1$a;->s(Ljava/lang/Iterable;)Landroidx/appcompat/view/menu/rs1$a;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/rs1;->a0()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/ss1;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ss1;->K()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    invoke-interface {v3, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/rs1$a;->v()Landroidx/appcompat/view/menu/rs1$a;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroidx/appcompat/view/menu/rs1$a;->w(Ljava/lang/Iterable;)Landroidx/appcompat/view/menu/rs1$a;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/q02;

    check-cast v5, Landroidx/appcompat/view/menu/rs1;

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    move-object/from16 v3, v17

    const/4 v11, 0x0

    goto/16 :goto_4

    :goto_8
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_d
    move-object v11, v1

    goto :goto_9

    :cond_e
    move-object v11, v15

    :goto_9
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/rs1;

    new-instance v5, Ljava/util/BitSet;

    invoke-direct {v5}, Ljava/util/BitSet;-><init>()V

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    new-instance v7, Landroidx/appcompat/view/menu/o4;

    invoke-direct {v7}, Landroidx/appcompat/view/menu/o4;-><init>()V

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/rs1;->j()I

    move-result v2

    if-nez v2, :cond_f

    goto :goto_d

    :cond_f
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/rs1;->Y()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/js1;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/js1;->O()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/js1;->j()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/js1;->N()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/js1;->K()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_c

    :cond_11
    const/4 v3, 0x0

    :goto_c
    invoke-interface {v7, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_12
    :goto_d
    new-instance v8, Landroidx/appcompat/view/menu/o4;

    invoke-direct {v8}, Landroidx/appcompat/view/menu/o4;-><init>()V

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/rs1;->N()I

    move-result v2

    if-nez v2, :cond_13

    goto :goto_f

    :cond_13
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/rs1;->a0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/ss1;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ss1;->P()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ss1;->j()I

    move-result v4

    if-lez v4, :cond_14

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ss1;->K()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ss1;->j()I

    move-result v9

    const/16 v17, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v9}, Landroidx/appcompat/view/menu/ss1;->G(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v8, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_14
    const/16 v17, 0x1

    goto :goto_e

    :cond_15
    :goto_f
    const/16 v17, 0x1

    if-eqz v1, :cond_18

    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/rs1;->R()I

    move-result v3

    shl-int/lit8 v3, v3, 0x6

    if-ge v2, v3, :cond_18

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/rs1;->b0()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/appcompat/view/menu/i92;->d0(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v18, v11

    const-string v11, "Filter already evaluated. audience ID, filter ID"

    invoke-virtual {v3, v11, v4, v9}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6, v2}, Ljava/util/BitSet;->set(I)V

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/rs1;->Z()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Landroidx/appcompat/view/menu/i92;->d0(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_11

    :cond_16
    move-object/from16 v18, v11

    :cond_17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v11, v18

    goto :goto_10

    :cond_18
    move-object/from16 v18, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/appcompat/view/menu/rs1;

    if-eqz v14, :cond_1d

    if-eqz v13, :cond_1d

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1d

    iget-object v2, v10, Landroidx/appcompat/view/menu/we2;->h:Ljava/lang/Long;

    if-eqz v2, :cond_1d

    iget-object v2, v10, Landroidx/appcompat/view/menu/we2;->g:Ljava/lang/Long;

    if-nez v2, :cond_19

    goto :goto_13

    :cond_19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/pq1;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pq1;->L()I

    move-result v3

    iget-object v9, v10, Landroidx/appcompat/view/menu/we2;->h:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pq1;->S()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v10, Landroidx/appcompat/view/menu/we2;->g:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    div-long v19, v19, v21

    :cond_1b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_1d
    :goto_13
    new-instance v11, Landroidx/appcompat/view/menu/if2;

    iget-object v3, v10, Landroidx/appcompat/view/menu/we2;->d:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, v11

    move-object/from16 v2, p0

    move-object/from16 p5, v12

    const/4 v12, 0x0

    invoke-direct/range {v1 .. v9}, Landroidx/appcompat/view/menu/if2;-><init>(Landroidx/appcompat/view/menu/we2;Ljava/lang/String;Landroidx/appcompat/view/menu/rs1;Ljava/util/BitSet;Ljava/util/BitSet;Ljava/util/Map;Ljava/util/Map;Landroidx/appcompat/view/menu/xf2;)V

    iget-object v1, v10, Landroidx/appcompat/view/menu/we2;->f:Ljava/util/Map;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v12, p5

    move-object/from16 v11, v18

    goto/16 :goto_a

    :cond_1e
    const/4 v12, 0x0

    const/16 v17, 0x1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "Skipping failed audience ID"

    if-nez v0, :cond_26

    new-instance v0, Landroidx/appcompat/view/menu/sf2;

    invoke-direct {v0, v10, v12}, Landroidx/appcompat/view/menu/sf2;-><init>(Landroidx/appcompat/view/menu/we2;Landroidx/appcompat/view/menu/ve1;)V

    new-instance v2, Landroidx/appcompat/view/menu/o4;

    invoke-direct {v2}, Landroidx/appcompat/view/menu/o4;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/ks1;

    iget-object v5, v10, Landroidx/appcompat/view/menu/we2;->d:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Landroidx/appcompat/view/menu/sf2;->a(Ljava/lang/String;Landroidx/appcompat/view/menu/ks1;)Landroidx/appcompat/view/menu/ks1;

    move-result-object v5

    if-eqz v5, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v6

    iget-object v7, v10, Landroidx/appcompat/view/menu/we2;->d:Ljava/lang/String;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ks1;->b0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ks1;->b0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Landroidx/appcompat/view/menu/lg1;->C0(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/gi1;

    move-result-object v9

    if-nez v9, :cond_20

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v9

    invoke-static {v7}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/fz1;->g()Landroidx/appcompat/view/menu/mt1;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroidx/appcompat/view/menu/mt1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "Event aggregate wasn\'t created during raw event logging. appId, event"

    invoke-virtual {v9, v8, v11, v6}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Landroidx/appcompat/view/menu/gi1;

    move-object/from16 v18, v6

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ks1;->b0()Ljava/lang/String;

    move-result-object v20

    const-wide/16 v21, 0x1

    const-wide/16 v23, 0x1

    const-wide/16 v25, 0x1

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ks1;->Y()J

    move-result-wide v27

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v19, v7

    invoke-direct/range {v18 .. v34}, Landroidx/appcompat/view/menu/gi1;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_14

    :cond_20
    new-instance v6, Landroidx/appcompat/view/menu/gi1;

    move-object/from16 v35, v6

    iget-object v4, v9, Landroidx/appcompat/view/menu/gi1;->a:Ljava/lang/String;

    move-object/from16 v36, v4

    iget-object v4, v9, Landroidx/appcompat/view/menu/gi1;->b:Ljava/lang/String;

    move-object/from16 v37, v4

    iget-wide v7, v9, Landroidx/appcompat/view/menu/gi1;->c:J

    const-wide/16 v13, 0x1

    add-long v38, v7, v13

    iget-wide v7, v9, Landroidx/appcompat/view/menu/gi1;->d:J

    add-long v40, v7, v13

    iget-wide v7, v9, Landroidx/appcompat/view/menu/gi1;->e:J

    add-long v42, v7, v13

    iget-wide v7, v9, Landroidx/appcompat/view/menu/gi1;->f:J

    move-wide/from16 v44, v7

    iget-wide v7, v9, Landroidx/appcompat/view/menu/gi1;->g:J

    move-wide/from16 v46, v7

    iget-object v4, v9, Landroidx/appcompat/view/menu/gi1;->h:Ljava/lang/Long;

    move-object/from16 v48, v4

    iget-object v4, v9, Landroidx/appcompat/view/menu/gi1;->i:Ljava/lang/Long;

    move-object/from16 v49, v4

    iget-object v4, v9, Landroidx/appcompat/view/menu/gi1;->j:Ljava/lang/Long;

    move-object/from16 v50, v4

    iget-object v4, v9, Landroidx/appcompat/view/menu/gi1;->k:Ljava/lang/Boolean;

    move-object/from16 v51, v4

    invoke-direct/range {v35 .. v51}, Landroidx/appcompat/view/menu/gi1;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroidx/appcompat/view/menu/lg1;->U(Landroidx/appcompat/view/menu/gi1;)V

    iget-wide v7, v6, Landroidx/appcompat/view/menu/gi1;->c:J

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ks1;->b0()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-nez v9, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v9

    iget-object v11, v10, Landroidx/appcompat/view/menu/we2;->d:Ljava/lang/String;

    invoke-virtual {v9, v11, v4}, Landroidx/appcompat/view/menu/lg1;->H0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v2, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v13, v10, Landroidx/appcompat/view/menu/we2;->e:Ljava/util/Set;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v13

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v13, v1, v11}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_15

    :cond_22
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move/from16 v14, v17

    :goto_16
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_24

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/pq1;

    new-instance v15, Landroidx/appcompat/view/menu/bg2;

    iget-object v12, v10, Landroidx/appcompat/view/menu/we2;->d:Ljava/lang/String;

    invoke-direct {v15, v10, v12, v11, v14}, Landroidx/appcompat/view/menu/bg2;-><init>(Landroidx/appcompat/view/menu/we2;Ljava/lang/String;ILandroidx/appcompat/view/menu/pq1;)V

    iget-object v12, v10, Landroidx/appcompat/view/menu/we2;->g:Ljava/lang/Long;

    move-object/from16 p4, v0

    iget-object v0, v10, Landroidx/appcompat/view/menu/we2;->h:Ljava/lang/Long;

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/pq1;->L()I

    move-result v14

    invoke-virtual {v10, v11, v14}, Landroidx/appcompat/view/menu/we2;->A(II)Z

    move-result v25

    move-object/from16 v18, v15

    move-object/from16 v19, v12

    move-object/from16 v20, v0

    move-object/from16 v21, v5

    move-wide/from16 v22, v7

    move-object/from16 v24, v6

    invoke-virtual/range {v18 .. v25}, Landroidx/appcompat/view/menu/bg2;->k(Ljava/lang/Long;Ljava/lang/Long;Landroidx/appcompat/view/menu/ks1;JLandroidx/appcompat/view/menu/gi1;Z)Z

    move-result v14

    if-eqz v14, :cond_23

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroidx/appcompat/view/menu/we2;->y(Ljava/lang/Integer;)Landroidx/appcompat/view/menu/if2;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroidx/appcompat/view/menu/if2;->c(Landroidx/appcompat/view/menu/df1;)V

    move-object/from16 v0, p4

    const/4 v12, 0x0

    goto :goto_16

    :cond_23
    iget-object v0, v10, Landroidx/appcompat/view/menu/we2;->e:Ljava/util/Set;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_24
    move-object/from16 p4, v0

    :goto_17
    if-nez v14, :cond_25

    iget-object v0, v10, Landroidx/appcompat/view/menu/we2;->e:Ljava/util/Set;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_25
    move-object/from16 v0, p4

    const/4 v12, 0x0

    goto/16 :goto_15

    :cond_26
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Landroidx/appcompat/view/menu/o4;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/o4;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/ts1;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ts1;->Z()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    if-nez v5, :cond_28

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v5

    iget-object v6, v10, Landroidx/appcompat/view/menu/we2;->d:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Landroidx/appcompat/view/menu/lg1;->J0(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_29
    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v10, Landroidx/appcompat/view/menu/we2;->e:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_18

    :cond_2a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move/from16 v8, v17

    :goto_1a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_31

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/sq1;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v9

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroidx/appcompat/view/menu/pt1;->C(I)Z

    move-result v9

    if-eqz v9, :cond_2c

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/sq1;->P()Z

    move-result v12

    if-eqz v12, :cond_2b

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/sq1;->j()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_1b

    :cond_2b
    const/4 v12, 0x0

    :goto_1b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->g()Landroidx/appcompat/view/menu/mt1;

    move-result-object v13

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/sq1;->L()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroidx/appcompat/view/menu/mt1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "Evaluating filter. audience, filter, property"

    invoke-virtual {v9, v14, v11, v12, v13}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->o()Landroidx/appcompat/view/menu/i92;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroidx/appcompat/view/menu/i92;->J(Landroidx/appcompat/view/menu/sq1;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Filter definition"

    invoke-virtual {v9, v12, v11}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2c
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/sq1;->P()Z

    move-result v9

    if-eqz v9, :cond_2f

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/sq1;->j()I

    move-result v9

    const/16 v11, 0x100

    if-le v9, v11, :cond_2d

    goto :goto_1c

    :cond_2d
    new-instance v9, Landroidx/appcompat/view/menu/ze1;

    iget-object v11, v10, Landroidx/appcompat/view/menu/we2;->d:Ljava/lang/String;

    invoke-direct {v9, v10, v11, v6, v8}, Landroidx/appcompat/view/menu/ze1;-><init>(Landroidx/appcompat/view/menu/we2;Ljava/lang/String;ILandroidx/appcompat/view/menu/sq1;)V

    iget-object v11, v10, Landroidx/appcompat/view/menu/we2;->g:Ljava/lang/Long;

    iget-object v12, v10, Landroidx/appcompat/view/menu/we2;->h:Ljava/lang/Long;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/sq1;->j()I

    move-result v8

    invoke-virtual {v10, v6, v8}, Landroidx/appcompat/view/menu/we2;->A(II)Z

    move-result v8

    invoke-virtual {v9, v11, v12, v3, v8}, Landroidx/appcompat/view/menu/ze1;->k(Ljava/lang/Long;Ljava/lang/Long;Landroidx/appcompat/view/menu/ts1;Z)Z

    move-result v8

    if-eqz v8, :cond_2e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroidx/appcompat/view/menu/we2;->y(Ljava/lang/Integer;)Landroidx/appcompat/view/menu/if2;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroidx/appcompat/view/menu/if2;->c(Landroidx/appcompat/view/menu/df1;)V

    goto/16 :goto_1a

    :cond_2e
    iget-object v7, v10, Landroidx/appcompat/view/menu/we2;->e:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_2f
    :goto_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v7

    iget-object v9, v10, Landroidx/appcompat/view/menu/we2;->d:Ljava/lang/String;

    invoke-static {v9}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/sq1;->P()Z

    move-result v11

    if-eqz v11, :cond_30

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/sq1;->j()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_1d

    :cond_30
    const/4 v8, 0x0

    :goto_1d
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "Invalid property filter ID. appId, id"

    invoke-virtual {v7, v11, v9, v8}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1f

    :cond_31
    :goto_1e
    if-nez v8, :cond_29

    :goto_1f
    iget-object v7, v10, Landroidx/appcompat/view/menu/we2;->e:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_19

    :cond_32
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v10, Landroidx/appcompat/view/menu/we2;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v2, v10, Landroidx/appcompat/view/menu/we2;->e:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_33
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, v10, Landroidx/appcompat/view/menu/we2;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/if2;

    invoke-static {v3}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v0}, Landroidx/appcompat/view/menu/if2;->a(I)Landroidx/appcompat/view/menu/is1;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v4

    iget-object v5, v10, Landroidx/appcompat/view/menu/we2;->d:Ljava/lang/String;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/is1;->Q()Landroidx/appcompat/view/menu/rs1;

    move-result-object v3

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/m82;->u()V

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-static {v5}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ax1;->h()[B

    move-result-object v3

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "app_id"

    invoke-virtual {v6, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "audience_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "current_results"

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :try_start_1
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/lg1;->B()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "audience_filter_values"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v7, 0x5

    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v0, v3, v8, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6

    const-wide/16 v11, -0x1

    cmp-long v0, v6, v11

    if-nez v0, :cond_33

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v3, "Failed to insert filter results (got -1). appId"

    invoke-static {v5}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_20

    :catch_1
    move-exception v0

    goto :goto_21

    :catch_2
    move-exception v0

    const/4 v8, 0x0

    :goto_21
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    const-string v4, "Error storing filter results. appId"

    invoke-static {v5}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_20

    :cond_34
    return-object v1
.end method

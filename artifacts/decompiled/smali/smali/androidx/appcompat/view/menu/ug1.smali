.class public final Landroidx/appcompat/view/menu/ug1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/qg1;
.implements Ljava/lang/Iterable;


# instance fields
.field public final m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "StringValue cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static bridge synthetic h(Landroidx/appcompat/view/menu/ug1;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final c()Landroidx/appcompat/view/menu/qg1;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/ug1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final d()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroidx/appcompat/view/menu/ug1;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Landroidx/appcompat/view/menu/ug1;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    iget-object p1, p1, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()Ljava/lang/Double;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/ah1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/ah1;-><init>(Landroidx/appcompat/view/menu/ug1;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/yg1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/yg1;-><init>(Landroidx/appcompat/view/menu/ug1;)V

    return-object v0
.end method

.method public final p(Ljava/lang/String;Landroidx/appcompat/view/menu/pw1;Ljava/util/List;)Landroidx/appcompat/view/menu/qg1;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "charAt"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "trim"

    const-string v7, "concat"

    const-string v8, "toLocaleUpperCase"

    const-string v9, "toString"

    const-string v10, "toLocaleLowerCase"

    const-string v11, "toLowerCase"

    const-string v12, "substring"

    const-string v13, "split"

    const-string v14, "slice"

    const-string v15, "search"

    const-string v2, "replace"

    const-string v0, "match"

    const-string v3, "lastIndexOf"

    move-object/from16 v16, v4

    const-string v4, "indexOf"

    move-object/from16 v17, v6

    const-string v6, "hasOwnProperty"

    move-object/from16 v18, v8

    const-string v8, "toUpperCase"

    if-nez v5, :cond_2

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v5, v18

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v18, v6

    move-object/from16 v6, v17

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "%s is not a String function"

    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    move-object/from16 v18, v6

    move-object/from16 v6, v17

    goto :goto_1

    :cond_2
    move-object/from16 v5, v18

    goto :goto_0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v17

    const/16 v19, -0x1

    move-object/from16 v20, v9

    sparse-switch v17, :sswitch_data_0

    :goto_2
    move-object/from16 v17, v0

    move-object/from16 v6, v16

    :goto_3
    move-object/from16 v9, v18

    move-object/from16 v7, v20

    goto/16 :goto_5

    :sswitch_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v19, 0x10

    goto :goto_2

    :sswitch_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v19, 0xf

    goto :goto_2

    :sswitch_2
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v19, 0xe

    goto :goto_2

    :sswitch_3
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    const/16 v19, 0xd

    goto :goto_2

    :sswitch_4
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    const/16 v19, 0xc

    goto :goto_2

    :sswitch_5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    const/16 v19, 0xb

    goto :goto_2

    :sswitch_6
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_2

    :cond_9
    const/16 v19, 0xa

    goto :goto_2

    :sswitch_7
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    const/16 v19, 0x9

    goto :goto_2

    :sswitch_8
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    const/16 v19, 0x8

    goto :goto_2

    :sswitch_9
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    const/16 v19, 0x7

    goto :goto_2

    :sswitch_a
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_2

    :cond_d
    const/16 v19, 0x6

    goto :goto_2

    :sswitch_b
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_2

    :cond_e
    const/16 v19, 0x5

    goto/16 :goto_2

    :sswitch_c
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_2

    :cond_f
    const/16 v19, 0x4

    goto/16 :goto_2

    :sswitch_d
    move-object/from16 v6, v16

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    :goto_4
    move-object/from16 v17, v0

    goto/16 :goto_3

    :cond_10
    const/16 v19, 0x3

    goto :goto_4

    :sswitch_e
    move-object/from16 v6, v16

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_4

    :cond_11
    move-object/from16 v17, v0

    move-object/from16 v9, v18

    move-object/from16 v7, v20

    const/16 v19, 0x2

    goto :goto_5

    :sswitch_f
    move-object/from16 v6, v16

    move-object/from16 v7, v20

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v17, v0

    move-object/from16 v9, v18

    if-nez v1, :cond_12

    goto :goto_5

    :cond_12
    const/16 v19, 0x1

    goto :goto_5

    :sswitch_10
    move-object/from16 v6, v16

    move-object/from16 v9, v18

    move-object/from16 v7, v20

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move-object/from16 v17, v0

    if-nez v1, :cond_13

    goto :goto_5

    :cond_13
    const/16 v19, 0x0

    :goto_5
    const-wide/16 v0, 0x0

    packed-switch v19, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Command not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object/from16 v2, p3

    const/4 v3, 0x2

    invoke-static {v4, v3, v2}, Landroidx/appcompat/view/menu/iu1;->n(Ljava/lang/String;ILjava/util/List;)V

    move-object/from16 v3, p0

    iget-object v4, v3, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_14

    sget-object v5, Landroidx/appcompat/view/menu/qg1;->e:Landroidx/appcompat/view/menu/qg1;

    invoke-interface {v5}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, p2

    goto :goto_6

    :cond_14
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/qg1;

    move-object/from16 v7, p2

    invoke-virtual {v7, v5}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v5

    invoke-interface {v5}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x2

    if-ge v6, v8, :cond_15

    goto :goto_7

    :cond_15
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {v7, v0}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_7
    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/iu1;->a(D)D

    move-result-wide v0

    new-instance v2, Landroidx/appcompat/view/menu/yf1;

    double-to-int v0, v0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Landroidx/appcompat/view/menu/yf1;-><init>(Ljava/lang/Double;)V

    return-object v2

    :pswitch_1
    move-object/from16 v3, p0

    move-object/from16 v7, p2

    move-object v0, v2

    const/4 v1, 0x2

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/iu1;->n(Ljava/lang/String;ILjava/util/List;)V

    sget-object v0, Landroidx/appcompat/view/menu/qg1;->e:Landroidx/appcompat/view/menu/qg1;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_16

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {v7, v1}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_16

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {v7, v0}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    :cond_16
    iget-object v2, v3, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_17

    return-object v3

    :cond_17
    instance-of v5, v0, Landroidx/appcompat/view/menu/gg1;

    if-eqz v5, :cond_18

    check-cast v0, Landroidx/appcompat/view/menu/gg1;

    const/4 v5, 0x3

    new-array v5, v5, [Landroidx/appcompat/view/menu/qg1;

    new-instance v6, Landroidx/appcompat/view/menu/ug1;

    invoke-direct {v6, v1}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    aput-object v6, v5, v8

    new-instance v6, Landroidx/appcompat/view/menu/yf1;

    int-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-direct {v6, v8}, Landroidx/appcompat/view/menu/yf1;-><init>(Ljava/lang/Double;)V

    const/4 v8, 0x1

    aput-object v6, v5, v8

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v0, v7, v5}, Landroidx/appcompat/view/menu/gg1;->a(Landroidx/appcompat/view/menu/pw1;Ljava/util/List;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    :cond_18
    new-instance v5, Landroidx/appcompat/view/menu/ug1;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    return-object v5

    :pswitch_2
    move-object/from16 v3, p0

    move-object/from16 v7, p2

    move-object/from16 v2, p3

    const/4 v0, 0x2

    invoke-static {v12, v0, v2}, Landroidx/appcompat/view/menu/iu1;->n(Ljava/lang/String;ILjava/util/List;)V

    iget-object v0, v3, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {v7, v4}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/appcompat/view/menu/iu1;->a(D)D

    move-result-wide v4

    double-to-int v1, v4

    goto :goto_8

    :cond_19
    const/4 v1, 0x0

    :goto_8
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1a

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {v7, v2}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v2

    invoke-interface {v2}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Landroidx/appcompat/view/menu/iu1;->a(D)D

    move-result-wide v4

    double-to-int v2, v4

    :goto_9
    const/4 v4, 0x0

    goto :goto_a

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_9

    :goto_a
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-instance v4, Landroidx/appcompat/view/menu/ug1;

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    return-object v4

    :pswitch_3
    move-object/from16 v3, p0

    move-object/from16 v7, p2

    move-object/from16 v2, p3

    const/4 v0, 0x2

    invoke-static {v13, v0, v2}, Landroidx/appcompat/view/menu/iu1;->n(Ljava/lang/String;ILjava/util/List;)V

    iget-object v0, v3, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1b

    new-instance v0, Landroidx/appcompat/view/menu/pf1;

    const/4 v1, 0x1

    new-array v1, v1, [Landroidx/appcompat/view/menu/qg1;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/pf1;-><init>([Landroidx/appcompat/view/menu/qg1;)V

    return-object v0

    :cond_1b
    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    :cond_1c
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {v7, v5}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v4

    invoke-interface {v4}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1d

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {v7, v2}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v2

    invoke-interface {v2}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Landroidx/appcompat/view/menu/iu1;->m(D)J

    move-result-wide v5

    goto :goto_b

    :cond_1d
    const-wide/32 v5, 0x7fffffff

    :goto_b
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_1e

    new-instance v0, Landroidx/appcompat/view/menu/pf1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/pf1;-><init>()V

    return-object v0

    :cond_1e
    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    long-to-int v7, v5

    const/4 v8, 0x1

    add-int/2addr v7, v8

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    array-length v4, v0

    if-lez v4, :cond_1f

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    array-length v4, v0

    sub-int/2addr v4, v8

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_20

    array-length v2, v0

    sub-int/2addr v2, v8

    goto :goto_c

    :cond_1f
    const/4 v9, 0x0

    :cond_20
    :goto_c
    array-length v4, v0

    int-to-long v7, v4

    cmp-long v4, v7, v5

    if-lez v4, :cond_21

    add-int/lit8 v2, v2, -0x1

    :cond_21
    :goto_d
    if-ge v9, v2, :cond_22

    new-instance v4, Landroidx/appcompat/view/menu/ug1;

    aget-object v5, v0, v9

    invoke-direct {v4, v5}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    :cond_22
    :goto_e
    new-instance v0, Landroidx/appcompat/view/menu/pf1;

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/pf1;-><init>(Ljava/util/List;)V

    return-object v0

    :pswitch_4
    move-object/from16 v3, p0

    move-object/from16 v7, p2

    move-object/from16 v2, p3

    const/4 v4, 0x2

    invoke-static {v14, v4, v2}, Landroidx/appcompat/view/menu/iu1;->n(Ljava/lang/String;ILjava/util/List;)V

    iget-object v4, v3, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_23

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {v7, v6}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v5

    invoke-interface {v5}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    goto :goto_f

    :cond_23
    move-wide v5, v0

    :goto_f
    invoke-static {v5, v6}, Landroidx/appcompat/view/menu/iu1;->a(D)D

    move-result-wide v5

    cmpg-double v8, v5, v0

    if-gez v8, :cond_24

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    int-to-double v8, v8

    add-double/2addr v8, v5

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    goto :goto_10

    :cond_24
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    :goto_10
    double-to-int v5, v5

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    if-le v6, v8, :cond_25

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {v7, v2}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v2

    invoke-interface {v2}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    goto :goto_11

    :cond_25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    int-to-double v6, v2

    :goto_11
    invoke-static {v6, v7}, Landroidx/appcompat/view/menu/iu1;->a(D)D

    move-result-wide v6

    cmpg-double v2, v6, v0

    if-gez v2, :cond_26

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    int-to-double v8, v2

    add-double/2addr v8, v6

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_12

    :cond_26
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    :goto_12
    double-to-int v0, v0

    sub-int/2addr v0, v5

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v5

    new-instance v1, Landroidx/appcompat/view/menu/ug1;

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_5
    move-object/from16 v3, p0

    move-object/from16 v7, p2

    move-object/from16 v2, p3

    move-object/from16 v0, v17

    const/4 v1, 0x1

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/iu1;->n(Ljava/lang/String;ILjava/util/List;)V

    iget-object v0, v3, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_27

    const-string v1, ""

    goto :goto_13

    :cond_27
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {v7, v2}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object v1

    :goto_13
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v1, Landroidx/appcompat/view/menu/pf1;

    const/4 v2, 0x1

    new-array v2, v2, [Landroidx/appcompat/view/menu/qg1;

    new-instance v4, Landroidx/appcompat/view/menu/ug1;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    aput-object v4, v2, v0

    invoke-direct {v1, v2}, Landroidx/appcompat/view/menu/pf1;-><init>([Landroidx/appcompat/view/menu/qg1;)V

    return-object v1

    :cond_28
    sget-object v0, Landroidx/appcompat/view/menu/qg1;->f:Landroidx/appcompat/view/menu/qg1;

    return-object v0

    :pswitch_6
    const/4 v0, 0x0

    move-object/from16 v3, p0

    move-object/from16 v2, p3

    invoke-static {v8, v0, v2}, Landroidx/appcompat/view/menu/iu1;->g(Ljava/lang/String;ILjava/util/List;)V

    iget-object v0, v3, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    new-instance v1, Landroidx/appcompat/view/menu/ug1;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_7
    const/4 v0, 0x0

    move-object/from16 v3, p0

    move-object/from16 v2, p3

    invoke-static {v8, v0, v2}, Landroidx/appcompat/view/menu/iu1;->g(Ljava/lang/String;ILjava/util/List;)V

    iget-object v0, v3, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    new-instance v1, Landroidx/appcompat/view/menu/ug1;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_8
    move-object/from16 v7, p2

    move-object/from16 v2, p3

    move-object v0, v3

    const/4 v1, 0x2

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/iu1;->n(Ljava/lang/String;ILjava/util/List;)V

    iget-object v0, v3, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_29

    sget-object v1, Landroidx/appcompat/view/menu/qg1;->e:Landroidx/appcompat/view/menu/qg1;

    invoke-interface {v1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_29
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {v7, v1}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object v1

    :goto_14
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2a

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_15

    :cond_2a
    const/4 v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {v7, v2}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v2

    invoke-interface {v2}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    :goto_15
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_2b

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_16

    :cond_2b
    invoke-static {v4, v5}, Landroidx/appcompat/view/menu/iu1;->a(D)D

    move-result-wide v4

    :goto_16
    new-instance v2, Landroidx/appcompat/view/menu/yf1;

    double-to-int v4, v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v2, v0}, Landroidx/appcompat/view/menu/yf1;-><init>(Ljava/lang/Double;)V

    return-object v2

    :pswitch_9
    const/4 v0, 0x0

    move-object/from16 v3, p0

    move-object/from16 v2, p3

    invoke-static {v5, v0, v2}, Landroidx/appcompat/view/menu/iu1;->g(Ljava/lang/String;ILjava/util/List;)V

    iget-object v0, v3, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    new-instance v1, Landroidx/appcompat/view/menu/ug1;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_a
    move-object/from16 v3, p0

    move-object/from16 v7, p2

    move-object/from16 v2, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v15, v1, v2}, Landroidx/appcompat/view/menu/iu1;->n(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {v7, v0}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_2c
    sget-object v0, Landroidx/appcompat/view/menu/qg1;->e:Landroidx/appcompat/view/menu/qg1;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object v0

    :goto_17
    iget-object v1, v3, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2d

    new-instance v1, Landroidx/appcompat/view/menu/yf1;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/yf1;-><init>(Ljava/lang/Double;)V

    return-object v1

    :cond_2d
    new-instance v0, Landroidx/appcompat/view/menu/yf1;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/yf1;-><init>(Ljava/lang/Double;)V

    return-object v0

    :pswitch_b
    const/4 v0, 0x0

    move-object/from16 v3, p0

    move-object/from16 v2, p3

    invoke-static {v11, v0, v2}, Landroidx/appcompat/view/menu/iu1;->g(Ljava/lang/String;ILjava/util/List;)V

    iget-object v0, v3, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    new-instance v1, Landroidx/appcompat/view/menu/ug1;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_c
    move-object/from16 v3, p0

    move-object/from16 v7, p2

    move-object/from16 v2, p3

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2e

    return-object v3

    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, v3, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_18
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_2f

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {v7, v1}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    :cond_2f
    new-instance v1, Landroidx/appcompat/view/menu/ug1;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_d
    move-object/from16 v3, p0

    move-object/from16 v7, p2

    move-object/from16 v2, p3

    const/4 v0, 0x1

    invoke-static {v6, v0, v2}, Landroidx/appcompat/view/menu/iu1;->n(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {v7, v0}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/iu1;->a(D)D

    move-result-wide v0

    double-to-int v9, v0

    goto :goto_19

    :cond_30
    const/4 v9, 0x0

    :goto_19
    iget-object v0, v3, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    if-ltz v9, :cond_32

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v9, v1, :cond_31

    goto :goto_1a

    :cond_31
    new-instance v1, Landroidx/appcompat/view/menu/ug1;

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_32
    :goto_1a
    sget-object v0, Landroidx/appcompat/view/menu/qg1;->l:Landroidx/appcompat/view/menu/qg1;

    return-object v0

    :pswitch_e
    const/4 v0, 0x0

    move-object/from16 v3, p0

    move-object/from16 v2, p3

    invoke-static {v10, v0, v2}, Landroidx/appcompat/view/menu/iu1;->g(Ljava/lang/String;ILjava/util/List;)V

    iget-object v0, v3, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    new-instance v1, Landroidx/appcompat/view/menu/ug1;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/ug1;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_f
    const/4 v0, 0x0

    move-object/from16 v3, p0

    move-object/from16 v2, p3

    invoke-static {v7, v0, v2}, Landroidx/appcompat/view/menu/iu1;->g(Ljava/lang/String;ILjava/util/List;)V

    return-object v3

    :pswitch_10
    move-object/from16 v3, p0

    move-object/from16 v7, p2

    move-object/from16 v2, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v9, v1, v2}, Landroidx/appcompat/view/menu/iu1;->g(Ljava/lang/String;ILjava/util/List;)V

    iget-object v1, v3, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/qg1;

    invoke-virtual {v7, v0}, Landroidx/appcompat/view/menu/pw1;->b(Landroidx/appcompat/view/menu/qg1;)Landroidx/appcompat/view/menu/qg1;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/qg1;->g()Ljava/lang/String;

    move-result-object v2

    const-string v4, "length"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    sget-object v0, Landroidx/appcompat/view/menu/qg1;->j:Landroidx/appcompat/view/menu/qg1;

    return-object v0

    :cond_33
    invoke-interface {v0}, Landroidx/appcompat/view/menu/qg1;->f()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    cmpl-double v0, v4, v6

    if-nez v0, :cond_34

    double-to-int v0, v4

    if-ltz v0, :cond_34

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_34

    sget-object v0, Landroidx/appcompat/view/menu/qg1;->j:Landroidx/appcompat/view/menu/qg1;

    return-object v0

    :cond_34
    sget-object v0, Landroidx/appcompat/view/menu/qg1;->k:Landroidx/appcompat/view/menu/qg1;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6aaca37f -> :sswitch_10
        -0x69e9ad94 -> :sswitch_f
        -0x57513364 -> :sswitch_e
        -0x5128e1d7 -> :sswitch_d
        -0x50c088ec -> :sswitch_c
        -0x43ce226a -> :sswitch_b
        -0x36059a58 -> :sswitch_a
        -0x2b53be43 -> :sswitch_9
        -0x1bdda92d -> :sswitch_8
        -0x17d0ad49 -> :sswitch_7
        0x367422 -> :sswitch_6
        0x62dd9c5 -> :sswitch_5
        0x6873d92 -> :sswitch_4
        0x6891b1a -> :sswitch_3
        0x1f9f6e51 -> :sswitch_2
        0x413cb2b4 -> :sswitch_1
        0x73d44649 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ug1;->m:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

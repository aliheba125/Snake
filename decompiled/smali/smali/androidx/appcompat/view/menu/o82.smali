.class public Landroidx/appcompat/view/menu/o82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/iz1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/o82$b;,
        Landroidx/appcompat/view/menu/o82$a;
    }
.end annotation


# static fields
.field public static volatile H:Landroidx/appcompat/view/menu/o82;


# instance fields
.field public A:J

.field public final B:Ljava/util/Map;

.field public final C:Ljava/util/Map;

.field public final D:Ljava/util/Map;

.field public E:Landroidx/appcompat/view/menu/t32;

.field public F:Ljava/lang/String;

.field public final G:Landroidx/appcompat/view/menu/ba2;

.field public a:Landroidx/appcompat/view/menu/rv1;

.field public b:Landroidx/appcompat/view/menu/cu1;

.field public c:Landroidx/appcompat/view/menu/lg1;

.field public d:Landroidx/appcompat/view/menu/pu1;

.field public e:Landroidx/appcompat/view/menu/c82;

.field public f:Landroidx/appcompat/view/menu/we2;

.field public final g:Landroidx/appcompat/view/menu/i92;

.field public h:Landroidx/appcompat/view/menu/p32;

.field public i:Landroidx/appcompat/view/menu/p62;

.field public final j:Landroidx/appcompat/view/menu/k82;

.field public k:Landroidx/appcompat/view/menu/lv1;

.field public final l:Landroidx/appcompat/view/menu/cx1;

.field public m:Z

.field public n:Z

.field public o:J

.field public p:Ljava/util/List;

.field public final q:Ljava/util/Set;

.field public r:I

.field public s:I

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Ljava/nio/channels/FileLock;

.field public x:Ljava/nio/channels/FileChannel;

.field public y:Ljava/util/List;

.field public z:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/r92;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/view/menu/o82;-><init>(Landroidx/appcompat/view/menu/r92;Landroidx/appcompat/view/menu/cx1;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/r92;Landroidx/appcompat/view/menu/cx1;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroidx/appcompat/view/menu/o82;->m:Z

    .line 3
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/o82;->q:Ljava/util/Set;

    .line 4
    new-instance p2, Landroidx/appcompat/view/menu/c92;

    invoke-direct {p2, p0}, Landroidx/appcompat/view/menu/c92;-><init>(Landroidx/appcompat/view/menu/o82;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/o82;->G:Landroidx/appcompat/view/menu/ba2;

    .line 5
    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p1, Landroidx/appcompat/view/menu/r92;->a:Landroid/content/Context;

    const/4 v0, 0x0

    .line 7
    invoke-static {p2, v0, v0}, Landroidx/appcompat/view/menu/cx1;->c(Landroid/content/Context;Landroidx/appcompat/view/menu/jn1;Ljava/lang/Long;)Landroidx/appcompat/view/menu/cx1;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/appcompat/view/menu/o82;->A:J

    .line 8
    new-instance p2, Landroidx/appcompat/view/menu/k82;

    invoke-direct {p2, p0}, Landroidx/appcompat/view/menu/k82;-><init>(Landroidx/appcompat/view/menu/o82;)V

    iput-object p2, p0, Landroidx/appcompat/view/menu/o82;->j:Landroidx/appcompat/view/menu/k82;

    .line 9
    new-instance p2, Landroidx/appcompat/view/menu/i92;

    invoke-direct {p2, p0}, Landroidx/appcompat/view/menu/i92;-><init>(Landroidx/appcompat/view/menu/o82;)V

    .line 10
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/m82;->v()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/o82;->g:Landroidx/appcompat/view/menu/i92;

    .line 11
    new-instance p2, Landroidx/appcompat/view/menu/cu1;

    invoke-direct {p2, p0}, Landroidx/appcompat/view/menu/cu1;-><init>(Landroidx/appcompat/view/menu/o82;)V

    .line 12
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/m82;->v()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/o82;->b:Landroidx/appcompat/view/menu/cu1;

    .line 13
    new-instance p2, Landroidx/appcompat/view/menu/rv1;

    invoke-direct {p2, p0}, Landroidx/appcompat/view/menu/rv1;-><init>(Landroidx/appcompat/view/menu/o82;)V

    .line 14
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/m82;->v()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/o82;->a:Landroidx/appcompat/view/menu/rv1;

    .line 15
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/o82;->B:Ljava/util/Map;

    .line 16
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/o82;->C:Ljava/util/Map;

    .line 17
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/o82;->D:Ljava/util/Map;

    .line 18
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object p2

    new-instance v0, Landroidx/appcompat/view/menu/u82;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/view/menu/u82;-><init>(Landroidx/appcompat/view/menu/o82;Landroidx/appcompat/view/menu/r92;)V

    .line 19
    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/jw1;->D(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final G(Ljava/util/List;)V
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->a(Z)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->y:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "Set uploading progress before finishing the previous upload"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/appcompat/view/menu/o82;->y:Ljava/util/List;

    return-void
.end method

.method private final M()V
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/o82;->t:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/o82;->u:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/o82;->v:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Stopping uploading service(s)"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->p:Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->p:Ljava/util/List;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/appcompat/view/menu/o82;->t:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/appcompat/view/menu/o82;->u:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Landroidx/appcompat/view/menu/o82;->v:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "Not stopping services. fetch, network, upload"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final N()V
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    iget-wide v1, v0, Landroidx/appcompat/view/menu/o82;->o:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/view/menu/cc;->b()J

    move-result-wide v1

    iget-wide v5, v0, Landroidx/appcompat/view/menu/o82;->o:J

    sub-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v5, 0x36ee80

    sub-long/2addr v5, v1

    cmp-long v1, v5, v3

    if-lez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Upload has been suspended. Will update scheduling later in approximately ms"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->v0()Landroidx/appcompat/view/menu/pu1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pu1;->c()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->w0()Landroidx/appcompat/view/menu/c82;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/c82;->z()V

    return-void

    :cond_0
    iput-wide v3, v0, Landroidx/appcompat/view/menu/o82;->o:J

    :cond_1
    iget-object v1, v0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/cx1;->s()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->O()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    sget-object v5, Landroidx/appcompat/view/menu/si1;->C:Landroidx/appcompat/view/menu/us1;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/lg1;->W0()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/lg1;->V0()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/qf1;->N()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v11, ".none."

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    sget-object v10, Landroidx/appcompat/view/menu/si1;->x:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v10, v6}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    sget-object v10, Landroidx/appcompat/view/menu/si1;->w:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v10, v6}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    goto :goto_2

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    sget-object v10, Landroidx/appcompat/view/menu/si1;->v:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v10, v6}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :goto_2
    iget-object v12, v0, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    iget-object v12, v12, Landroidx/appcompat/view/menu/p62;->g:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {v12}, Landroidx/appcompat/view/menu/dv1;->a()J

    move-result-wide v12

    iget-object v14, v0, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    iget-object v14, v14, Landroidx/appcompat/view/menu/p62;->h:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/dv1;->a()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v16

    move-wide/from16 v17, v10

    invoke-virtual/range {v16 .. v16}, Landroidx/appcompat/view/menu/lg1;->z()J

    move-result-wide v9

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v11

    move-wide/from16 v19, v7

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/lg1;->A()J

    move-result-wide v6

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    cmp-long v8, v6, v3

    if-nez v8, :cond_8

    :cond_7
    move-wide v10, v3

    goto/16 :goto_4

    :cond_8
    sub-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long v6, v1, v6

    sub-long/2addr v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sub-long v8, v1, v8

    sub-long/2addr v14, v1

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long/2addr v1, v10

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    add-long v10, v6, v19

    if-eqz v5, :cond_9

    cmp-long v5, v8, v3

    if-lez v5, :cond_9

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    add-long v10, v10, v17

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    move-result-object v5

    move-wide/from16 v12, v17

    invoke-virtual {v5, v8, v9, v12, v13}, Landroidx/appcompat/view/menu/i92;->b0(JJ)Z

    move-result v5

    if-nez v5, :cond_a

    add-long v10, v8, v12

    :cond_a
    cmp-long v5, v1, v3

    if-eqz v5, :cond_c

    cmp-long v5, v1, v6

    if-ltz v5, :cond_c

    const/4 v5, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    sget-object v6, Landroidx/appcompat/view/menu/si1;->E:Landroidx/appcompat/view/menu/us1;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/16 v9, 0x14

    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_7

    const-wide/16 v12, 0x1

    shl-long/2addr v12, v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    sget-object v6, Landroidx/appcompat/view/menu/si1;->D:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    mul-long/2addr v6, v12

    add-long/2addr v10, v6

    cmp-long v6, v10, v1

    if-lez v6, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    cmp-long v1, v10, v3

    if-nez v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Next upload time is 0"

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->v0()Landroidx/appcompat/view/menu/pu1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pu1;->c()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->w0()Landroidx/appcompat/view/menu/c82;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/c82;->z()V

    return-void

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->g0()Landroidx/appcompat/view/menu/cu1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/cu1;->A()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "No network"

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->v0()Landroidx/appcompat/view/menu/pu1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pu1;->b()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->w0()Landroidx/appcompat/view/menu/c82;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/c82;->z()V

    return-void

    :cond_e
    iget-object v1, v0, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    iget-object v1, v1, Landroidx/appcompat/view/menu/p62;->f:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/dv1;->a()J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    sget-object v5, Landroidx/appcompat/view/menu/si1;->t:Landroidx/appcompat/view/menu/us1;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    move-result-object v7

    invoke-virtual {v7, v1, v2, v5, v6}, Landroidx/appcompat/view/menu/i92;->b0(JJ)Z

    move-result v7

    if-nez v7, :cond_f

    add-long/2addr v1, v5

    invoke-static {v10, v11, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->v0()Landroidx/appcompat/view/menu/pu1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pu1;->c()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v1

    sub-long/2addr v10, v1

    cmp-long v1, v10, v3

    if-gtz v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    sget-object v1, Landroidx/appcompat/view/menu/si1;->y:Landroidx/appcompat/view/menu/us1;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iget-object v1, v0, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    iget-object v1, v1, Landroidx/appcompat/view/menu/p62;->g:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v2

    invoke-interface {v2}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/dv1;->b(J)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Upload scheduled in approximately ms"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->w0()Landroidx/appcompat/view/menu/c82;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Landroidx/appcompat/view/menu/c82;->y(J)V

    return-void

    :cond_11
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Nothing to upload or uploading impossible"

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->v0()Landroidx/appcompat/view/menu/pu1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pu1;->c()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->w0()Landroidx/appcompat/view/menu/c82;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/c82;->z()V

    return-void
.end method

.method private final O()Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lg1;->U0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lg1;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final P()Z
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->w:Ljava/nio/channels/FileLock;

    const/4 v1, 0x1

    const-string v2, "Storage concurrent access okay"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    const-string v4, "google_app_measurement.db"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/o82;->x:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/o82;->w:Ljava/nio/channels/FileLock;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Storage concurrent data access panic"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/channels/OverlappingFileLockException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Storage lock already acquired"

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Failed to access storage lock file"

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Failed to acquire storage lock"

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    const/4 v0, 0x0

    return v0
.end method

.method public static d0(Landroidx/appcompat/view/menu/cb2;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/cb2;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/view/menu/cb2;->C:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static bridge synthetic i(Landroidx/appcompat/view/menu/o82;)Landroidx/appcompat/view/menu/cx1;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    return-object p0
.end method

.method public static j(Landroidx/appcompat/view/menu/m82;)Landroidx/appcompat/view/menu/m82;
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m82;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Component not initialized: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Upload Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(Landroid/content/Context;)Landroidx/appcompat/view/menu/o82;
    .locals 2

    invoke-static {p0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroidx/appcompat/view/menu/o82;->H:Landroidx/appcompat/view/menu/o82;

    if-nez v0, :cond_1

    const-class v0, Landroidx/appcompat/view/menu/o82;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroidx/appcompat/view/menu/o82;->H:Landroidx/appcompat/view/menu/o82;

    if-nez v1, :cond_0

    new-instance v1, Landroidx/appcompat/view/menu/r92;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/r92;-><init>(Landroid/content/Context;)V

    invoke-static {v1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/r92;

    new-instance v1, Landroidx/appcompat/view/menu/o82;

    invoke-direct {v1, p0}, Landroidx/appcompat/view/menu/o82;-><init>(Landroidx/appcompat/view/menu/r92;)V

    sput-object v1, Landroidx/appcompat/view/menu/o82;->H:Landroidx/appcompat/view/menu/o82;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Landroidx/appcompat/view/menu/o82;->H:Landroidx/appcompat/view/menu/o82;

    return-object p0
.end method

.method public static s(Landroidx/appcompat/view/menu/ks1$a;ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ks1$a;->G()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "_err"

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/ms1;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ms1;->c0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/appcompat/view/menu/ms1;->Z()Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/ms1$a;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v0

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/ms1$a;->t(J)Landroidx/appcompat/view/menu/ms1$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/q02;

    check-cast p1, Landroidx/appcompat/view/menu/ms1;

    invoke-static {}, Landroidx/appcompat/view/menu/ms1;->Z()Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v0

    const-string v1, "_ev"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ms1$a;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/ms1$a;->y(Ljava/lang/String;)Landroidx/appcompat/view/menu/ms1$a;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/q02;

    check-cast p2, Landroidx/appcompat/view/menu/ms1;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ks1$a;->x(Landroidx/appcompat/view/menu/ms1;)Landroidx/appcompat/view/menu/ks1$a;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ks1$a;->x(Landroidx/appcompat/view/menu/ms1;)Landroidx/appcompat/view/menu/ks1$a;

    return-void
.end method

.method public static t(Landroidx/appcompat/view/menu/ks1$a;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ks1$a;->G()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/ms1;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ms1;->c0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/ks1$a;->s(I)Landroidx/appcompat/view/menu/ks1$a;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic w(Landroidx/appcompat/view/menu/o82;Landroidx/appcompat/view/menu/r92;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/fz1;->n()V

    new-instance p1, Landroidx/appcompat/view/menu/lv1;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/lv1;-><init>(Landroidx/appcompat/view/menu/o82;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/o82;->k:Landroidx/appcompat/view/menu/lv1;

    new-instance p1, Landroidx/appcompat/view/menu/lg1;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/lg1;-><init>(Landroidx/appcompat/view/menu/o82;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/m82;->v()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/o82;->c:Landroidx/appcompat/view/menu/lg1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->a:Landroidx/appcompat/view/menu/rv1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/wf1;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/qf1;->r(Landroidx/appcompat/view/menu/wf1;)V

    new-instance p1, Landroidx/appcompat/view/menu/p62;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/p62;-><init>(Landroidx/appcompat/view/menu/o82;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/m82;->v()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    new-instance p1, Landroidx/appcompat/view/menu/we2;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/we2;-><init>(Landroidx/appcompat/view/menu/o82;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/m82;->v()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/o82;->f:Landroidx/appcompat/view/menu/we2;

    new-instance p1, Landroidx/appcompat/view/menu/p32;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/p32;-><init>(Landroidx/appcompat/view/menu/o82;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/m82;->v()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/o82;->h:Landroidx/appcompat/view/menu/p32;

    new-instance p1, Landroidx/appcompat/view/menu/c82;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/c82;-><init>(Landroidx/appcompat/view/menu/o82;)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/m82;->v()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/o82;->e:Landroidx/appcompat/view/menu/c82;

    new-instance p1, Landroidx/appcompat/view/menu/pu1;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/pu1;-><init>(Landroidx/appcompat/view/menu/o82;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/o82;->d:Landroidx/appcompat/view/menu/pu1;

    iget p1, p0, Landroidx/appcompat/view/menu/o82;->r:I

    iget v0, p0, Landroidx/appcompat/view/menu/o82;->s:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    iget v0, p0, Landroidx/appcompat/view/menu/o82;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/menu/o82;->s:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Not all upload components initialized"

    invoke-virtual {p1, v2, v0, v1}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/o82;->m:Z

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/String;Landroidx/appcompat/view/menu/fh1;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->C:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/lg1;->W(Ljava/lang/String;Landroidx/appcompat/view/menu/fh1;)V

    :cond_0
    return-void
.end method

.method public final B(Ljava/lang/String;Landroidx/appcompat/view/menu/ps1$a;)V
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/rv1;->R(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/ps1$a;->U(Ljava/lang/Iterable;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/rv1;->b0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ps1$a;->g0()Landroidx/appcompat/view/menu/ps1$a;

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/rv1;->e0(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    sget-object v2, Landroidx/appcompat/view/menu/si1;->B0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/view/menu/qf1;->B(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ps1$a;->R0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/ps1$a;->H0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ps1$a;->z0()Landroidx/appcompat/view/menu/ps1$a;

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/rv1;->f0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "_id"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/i92;->y(Landroidx/appcompat/view/menu/ps1$a;Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_4

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/ps1$a;->M(I)Landroidx/appcompat/view/menu/ps1$a;

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/rv1;->d0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ps1$a;->k0()Landroidx/appcompat/view/menu/ps1$a;

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/rv1;->a0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ps1$a;->X()Landroidx/appcompat/view/menu/ps1$a;

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->D:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/o82$b;

    if-eqz v0, :cond_6

    iget-wide v1, v0, Landroidx/appcompat/view/menu/o82$b;->b:J

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v3

    sget-object v4, Landroidx/appcompat/view/menu/si1;->W:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v3, p1, v4}, Landroidx/appcompat/view/menu/qf1;->x(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)J

    move-result-wide v3

    add-long/2addr v1, v3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v3

    invoke-interface {v3}, Landroidx/appcompat/view/menu/cc;->b()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_7

    :cond_6
    new-instance v0, Landroidx/appcompat/view/menu/o82$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/view/menu/o82$b;-><init>(Landroidx/appcompat/view/menu/o82;Landroidx/appcompat/view/menu/g92;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/o82;->D:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v0, v0, Landroidx/appcompat/view/menu/o82$b;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/ps1$a;->y0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_8
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/rv1;->c0(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ps1$a;->I0()Landroidx/appcompat/view/menu/ps1$a;

    :cond_9
    return-void
.end method

.method public final C(Ljava/lang/String;Landroidx/appcompat/view/menu/lz1;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->B:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/lg1;->X(Ljava/lang/String;Landroidx/appcompat/view/menu/lz1;)V

    return-void
.end method

.method public final D(Ljava/lang/String;Landroidx/appcompat/view/menu/t32;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->F:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iput-object p1, p0, Landroidx/appcompat/view/menu/o82;->F:Ljava/lang/String;

    iput-object p2, p0, Landroidx/appcompat/view/menu/o82;->E:Landroidx/appcompat/view/menu/t32;

    :cond_1
    return-void
.end method

.method public final E(Ljava/lang/String;Landroidx/appcompat/view/menu/cb2;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    invoke-static {p2}, Landroidx/appcompat/view/menu/o82;->d0(Landroidx/appcompat/view/menu/cb2;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Landroidx/appcompat/view/menu/cb2;->t:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/o82;->g(Landroidx/appcompat/view/menu/cb2;)Landroidx/appcompat/view/menu/rw1;

    return-void

    :cond_1
    const-string v0, "_npa"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Landroidx/appcompat/view/menu/cb2;->D:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "Falling back to manifest metadata value for ad personalization"

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    new-instance p1, Landroidx/appcompat/view/menu/v92;

    const-string v2, "_npa"

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v3

    iget-object v0, p2, Landroidx/appcompat/view/menu/cb2;->D:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "auto"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Landroidx/appcompat/view/menu/v92;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/o82;->x(Landroidx/appcompat/view/menu/v92;Landroidx/appcompat/view/menu/cb2;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/mt1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Removing user property"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lg1;->Q0()V

    :try_start_0
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/o82;->g(Landroidx/appcompat/view/menu/cb2;)Landroidx/appcompat/view/menu/rw1;

    const-string v0, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    iget-object v1, p2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "_lair"

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/lg1;->L0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    iget-object p2, p2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {p2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/view/menu/lg1;->L0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/lg1;->T0()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string v0, "User property removed"

    iget-object v1, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/mt1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/lg1;->R0()V

    return-void

    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    throw p1
.end method

.method public final F(Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/lg1;->D0(Ljava/lang/String;)Landroidx/appcompat/view/menu/rw1;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/rw1;->G(Z)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rw1;->s()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/lg1;->V(Landroidx/appcompat/view/menu/rw1;)V

    :cond_0
    return-void
.end method

.method public final H(Z)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/o82;->N()V

    return-void
.end method

.method public final I(ZILjava/lang/Throwable;[BLjava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    const/4 p5, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, p5, [B

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_9

    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->y:Ljava/util/List;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/view/menu/o82;->y:Ljava/util/List;

    invoke-static {}, Landroidx/appcompat/view/menu/ia2;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/si1;->Y0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    if-eqz p1, :cond_3

    :cond_1
    const/16 v2, 0xc8

    if-eq p2, v2, :cond_2

    const/16 v2, 0xcc

    if-ne p2, v2, :cond_d

    :cond_2
    if-nez p3, :cond_d

    :cond_3
    :try_start_1
    invoke-static {}, Landroidx/appcompat/view/menu/ia2;->a()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object p3

    sget-object v2, Landroidx/appcompat/view/menu/si1;->Y0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {p3, v2}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz p1, :cond_5

    goto :goto_1

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_4
    :goto_1
    iget-object p3, p0, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    iget-object p3, p3, Landroidx/appcompat/view/menu/p62;->g:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v2

    invoke-interface {v2}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v2

    invoke-virtual {p3, v2, v3}, Landroidx/appcompat/view/menu/dv1;->b(J)V

    :cond_5
    iget-object p3, p0, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    iget-object p3, p3, Landroidx/appcompat/view/menu/p62;->h:Landroidx/appcompat/view/menu/dv1;

    const-wide/16 v2, 0x0

    invoke-virtual {p3, v2, v3}, Landroidx/appcompat/view/menu/dv1;->b(J)V

    invoke-direct {p0}, Landroidx/appcompat/view/menu/o82;->N()V

    invoke-static {}, Landroidx/appcompat/view/menu/ia2;->a()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object p3

    sget-object v4, Landroidx/appcompat/view/menu/si1;->Y0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {p3, v4}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result p3

    if-eqz p3, :cond_7

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {}, Landroidx/appcompat/view/menu/ia2;->a()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Purged empty bundles"

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p3, "Successful upload. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_8
    :goto_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/lg1;->Q0()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/m82;->u()V

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/lg1;->B()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p4

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, p5
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v4, "queue"

    const-string v5, "rowid=?"

    invoke-virtual {p4, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p4

    if-ne p4, v0, :cond_9

    goto :goto_4

    :cond_9
    new-instance p4, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Deleted fewer rows from queue than expected"

    invoke-direct {p4, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p4
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_1
    move-exception p4

    :try_start_5
    invoke-virtual {p3}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p3

    const-string v0, "Failed to delete a bundle in a queue table"

    invoke-virtual {p3, v0, p4}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    throw p4
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_2
    move-exception p3

    :try_start_6
    iget-object p4, p0, Landroidx/appcompat/view/menu/o82;->z:Ljava/util/List;

    if-eqz p4, :cond_a

    invoke-interface {p4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_4

    :cond_a
    throw p3

    :cond_b
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/lg1;->T0()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/lg1;->R0()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/o82;->z:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->g0()Landroidx/appcompat/view/menu/cu1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cu1;->A()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Landroidx/appcompat/view/menu/o82;->O()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->t0()V

    goto :goto_5

    :cond_c
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/appcompat/view/menu/o82;->A:J

    invoke-direct {p0}, Landroidx/appcompat/view/menu/o82;->N()V

    :goto_5
    iput-wide v2, p0, Landroidx/appcompat/view/menu/o82;->o:J

    goto :goto_8

    :goto_6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    throw p1
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_7
    :try_start_8
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string p3, "Database error while trying to delete uploaded bundles"

    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object p1

    invoke-interface {p1}, Landroidx/appcompat/view/menu/cc;->b()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/appcompat/view/menu/o82;->o:J

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Disable upload, time"

    iget-wide p3, p0, Landroidx/appcompat/view/menu/o82;->o:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_d
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p4, "Network upload failed. Will retry later. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p4, v1, p3}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    iget-object p1, p1, Landroidx/appcompat/view/menu/p62;->h:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object p3

    invoke-interface {p3}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Landroidx/appcompat/view/menu/dv1;->b(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_e

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_f

    :cond_e
    iget-object p1, p0, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    iget-object p1, p1, Landroidx/appcompat/view/menu/p62;->f:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object p2

    invoke-interface {p2}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/dv1;->b(J)V

    :cond_f
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/lg1;->a0(Ljava/util/List;)V

    invoke-direct {p0}, Landroidx/appcompat/view/menu/o82;->N()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_8
    iput-boolean p5, p0, Landroidx/appcompat/view/menu/o82;->u:Z

    invoke-direct {p0}, Landroidx/appcompat/view/menu/o82;->M()V

    return-void

    :goto_9
    iput-boolean p5, p0, Landroidx/appcompat/view/menu/o82;->u:Z

    invoke-direct {p0}, Landroidx/appcompat/view/menu/o82;->M()V

    throw p1
.end method

.method public final J(ILjava/nio/channels/FileChannel;)Z
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p2, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Ljava/nio/channels/FileChannel;->force(Z)V

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x4

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Error writing to channel. Bytes written"

    invoke-virtual {p2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return p1

    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string v1, "Failed to write to channel"

    invoke-virtual {p2, v1, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Bad channel to read from"

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return v0
.end method

.method public final K(Landroidx/appcompat/view/menu/ks1$a;Landroidx/appcompat/view/menu/ks1$a;)Z
    .locals 8

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_e"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->a(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/q02;

    check-cast v0, Landroidx/appcompat/view/menu/ks1;

    const-string v2, "_sc"

    invoke-static {v0, v2}, Landroidx/appcompat/view/menu/i92;->F(Landroidx/appcompat/view/menu/ks1;Ljava/lang/String;)Landroidx/appcompat/view/menu/ms1;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ms1;->d0()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/q02;

    check-cast v3, Landroidx/appcompat/view/menu/ks1;

    const-string v4, "_pc"

    invoke-static {v3, v4}, Landroidx/appcompat/view/menu/i92;->F(Landroidx/appcompat/view/menu/ks1;Ljava/lang/String;)Landroidx/appcompat/view/menu/ms1;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ms1;->d0()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->a(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/q02;

    check-cast v0, Landroidx/appcompat/view/menu/ks1;

    const-string v1, "_et"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/i92;->F(Landroidx/appcompat/view/menu/ks1;Ljava/lang/String;)Landroidx/appcompat/view/menu/ms1;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ms1;->h0()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ms1;->X()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ms1;->X()J

    move-result-wide v2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/q02;

    check-cast v0, Landroidx/appcompat/view/menu/ks1;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/i92;->F(Landroidx/appcompat/view/menu/ks1;Ljava/lang/String;)Landroidx/appcompat/view/menu/ms1;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ms1;->X()J

    move-result-wide v6

    cmp-long v4, v6, v4

    if-lez v4, :cond_3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ms1;->X()J

    move-result-wide v4

    add-long/2addr v2, v4

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p2, v1, v0}, Landroidx/appcompat/view/menu/i92;->R(Landroidx/appcompat/view/menu/ks1$a;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "_fr"

    invoke-static {p1, v0, p2}, Landroidx/appcompat/view/menu/i92;->R(Landroidx/appcompat/view/menu/ks1$a;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public final L(Ljava/lang/String;J)Z
    .locals 42

    move-object/from16 v1, p0

    const-string v2, "_ai"

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/lg1;->Q0()V

    :try_start_0
    new-instance v3, Landroidx/appcompat/view/menu/o82$a;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Landroidx/appcompat/view/menu/o82$a;-><init>(Landroidx/appcompat/view/menu/o82;Landroidx/appcompat/view/menu/e92;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v5

    iget-wide v6, v1, Landroidx/appcompat/view/menu/o82;->A:J

    invoke-static {v3}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/m82;->u()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v9, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/lg1;->B()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v14, ""

    const/4 v8, 0x2

    if-eqz v13, :cond_3

    cmp-long v13, v6, v9

    if-eqz v13, :cond_0

    :try_start_2
    new-array v4, v8, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v12

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v11

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    const/4 v4, 0x0

    goto/16 :goto_40

    :catch_0
    move-exception v0

    move-object v6, v0

    const/4 v4, 0x0

    :goto_0
    const/4 v8, 0x0

    goto/16 :goto_8

    :cond_0
    new-array v4, v11, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v4, v12

    :goto_1
    if-eqz v13, :cond_1

    const-string v14, "rowid <= ? and "

    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v8, "select app_id, metadata_fingerprint from raw_events where "

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v8, :cond_2

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_41

    :cond_2
    :try_start_5
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v22, v4

    move-object v4, v13

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_40

    :catch_1
    move-exception v0

    :goto_2
    move-object v6, v0

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object v6, v0

    goto :goto_0

    :cond_3
    cmp-long v4, v6, v9

    if-eqz v4, :cond_4

    const/4 v8, 0x2

    :try_start_7
    new-array v13, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v8, v13, v12

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v13, v11

    goto :goto_3

    :cond_4
    const/4 v8, 0x0

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v13

    :goto_3
    if-eqz v4, :cond_5

    const-string v14, " and rowid <= ?"

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "select metadata_fingerprint from raw_events where app_id = ?"

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " order by rowid limit 1;"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-nez v8, :cond_6

    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_9

    :cond_6
    :try_start_a
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v22, v4

    move-object v4, v13

    const/4 v8, 0x0

    :goto_4
    :try_start_b
    const-string v14, "raw_events_metadata"

    new-array v13, v11, [Ljava/lang/String;

    const-string v16, "metadata"

    aput-object v16, v13, v12

    const-string v16, "app_id = ? and metadata_fingerprint = ?"

    filled-new-array {v8, v4}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "rowid"

    const-string v21, "2"

    move-object/from16 v23, v13

    move-object v13, v15

    move-object/from16 v24, v15

    move-object/from16 v15, v23

    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :try_start_c
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-nez v13, :cond_7

    :try_start_d
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v4

    const-string v6, "Raw event metadata record is missing. appId"

    invoke-static {v8}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_9

    :catchall_3
    move-exception v0

    move-object v1, v0

    move-object v4, v15

    goto/16 :goto_40

    :catch_3
    move-exception v0

    move-object v6, v0

    move-object v4, v15

    goto/16 :goto_8

    :cond_7
    :try_start_f
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    invoke-static {}, Landroidx/appcompat/view/menu/ps1;->A3()Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v14

    invoke-static {v14, v13}, Landroidx/appcompat/view/menu/i92;->G(Landroidx/appcompat/view/menu/c42;[B)Landroidx/appcompat/view/menu/c42;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/view/menu/ps1$a;

    invoke-virtual {v13}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/view/menu/q02;

    check-cast v13, Landroidx/appcompat/view/menu/ps1;
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :try_start_11
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14
    :try_end_11
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_11 .. :try_end_11} :catch_6
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    if-eqz v14, :cond_8

    :try_start_12
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v14

    const-string v11, "Get multiple raw event metadata records, expected one. appId"

    invoke-static {v8}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v14, v11, v12}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :cond_8
    :try_start_13
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    invoke-interface {v3, v13}, Landroidx/appcompat/view/menu/tg1;->b(Landroidx/appcompat/view/menu/ps1;)V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    cmp-long v11, v6, v9

    if-eqz v11, :cond_9

    :try_start_14
    const-string v11, "app_id = ? and metadata_fingerprint = ? and rowid <= ?"

    const/4 v12, 0x3

    new-array v13, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v8, v13, v12

    const/4 v12, 0x1

    aput-object v4, v13, v12

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v13, v6
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    move-object/from16 v16, v11

    move-object/from16 v17, v13

    goto :goto_5

    :cond_9
    :try_start_15
    const-string v6, "app_id = ? and metadata_fingerprint = ?"

    filled-new-array {v8, v4}, [Ljava/lang/String;

    move-result-object v4

    move-object/from16 v17, v4

    move-object/from16 v16, v6

    :goto_5
    const-string v14, "raw_events"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "rowid"

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const-string v6, "name"

    const/4 v7, 0x1

    aput-object v6, v4, v7

    const-string v6, "timestamp"

    const/4 v7, 0x2

    aput-object v6, v4, v7

    const-string v6, "data"

    const/4 v7, 0x3

    aput-object v6, v4, v7

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v20, "rowid"
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    const/16 v21, 0x0

    move-object/from16 v13, v24

    move-object v6, v15

    move-object v15, v4

    :try_start_16
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v6

    const-string v7, "Raw event data disappeared while in transaction. appId"

    invoke-static {v8}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v6, v7, v11}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :try_start_18
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto/16 :goto_9

    :cond_a
    const/4 v6, 0x0

    :try_start_19
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_1
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    :try_start_1a
    invoke-static {}, Landroidx/appcompat/view/menu/ks1;->Z()Landroidx/appcompat/view/menu/ks1$a;

    move-result-object v6

    invoke-static {v6, v7}, Landroidx/appcompat/view/menu/i92;->G(Landroidx/appcompat/view/menu/c42;[B)Landroidx/appcompat/view/menu/c42;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/ks1$a;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    const/4 v7, 0x1

    :try_start_1b
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroidx/appcompat/view/menu/ks1$a;->z(Ljava/lang/String;)Landroidx/appcompat/view/menu/ks1$a;

    move-result-object v7

    const/4 v13, 0x2

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-virtual {v7, v14, v15}, Landroidx/appcompat/view/menu/ks1$a;->B(J)Landroidx/appcompat/view/menu/ks1$a;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/q02;

    check-cast v6, Landroidx/appcompat/view/menu/ks1;

    invoke-interface {v3, v11, v12, v6}, Landroidx/appcompat/view/menu/tg1;->a(JLandroidx/appcompat/view/menu/ks1;)Z

    move-result v6
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_1
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    if-nez v6, :cond_b

    :try_start_1c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    goto/16 :goto_9

    :catch_4
    move-exception v0

    const/4 v13, 0x2

    move-object v6, v0

    :try_start_1d
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v7

    const-string v11, "Data loss. Failed to merge raw event. appId"

    invoke-static {v8}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v11, v12, v6}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_1d} :catch_1
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    if-nez v6, :cond_a

    :try_start_1e
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    goto :goto_9

    :catchall_4
    move-exception v0

    :goto_6
    move-object v1, v0

    move-object v4, v6

    goto/16 :goto_40

    :catch_5
    move-exception v0

    :goto_7
    move-object v4, v6

    goto/16 :goto_2

    :catchall_5
    move-exception v0

    move-object v6, v15

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v6, v15

    goto :goto_7

    :catch_7
    move-exception v0

    move-object v6, v15

    move-object v4, v0

    :try_start_1f
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v7

    const-string v11, "Data loss. Failed to merge raw event metadata. appId"

    invoke-static {v8}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v11, v12, v4}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1f .. :try_end_1f} :catch_5
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    :try_start_20
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    goto :goto_9

    :catchall_6
    move-exception v0

    move-object v1, v0

    move-object/from16 v4, v22

    goto/16 :goto_40

    :catch_8
    move-exception v0

    move-object v6, v0

    move-object/from16 v4, v22

    :goto_8
    :try_start_21
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v5

    const-string v7, "Data loss. Error selecting raw event. appId"

    invoke-static {v8}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8, v6}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_2

    if-eqz v4, :cond_c

    :try_start_22
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_c
    :goto_9
    iget-object v4, v3, Landroidx/appcompat/view/menu/o82$a;->c:Ljava/util/List;

    if-eqz v4, :cond_6c

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d

    goto/16 :goto_3f

    :cond_d
    iget-object v4, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/q02;->x()Landroidx/appcompat/view/menu/q02$b;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/ps1$a;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ps1$a;->o0()Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    :goto_a
    iget-object v15, v3, Landroidx/appcompat/view/menu/o82$a;->c:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1

    const-string v9, "_et"

    const-string v10, "_fr"

    const-string v5, "_e"

    move/from16 v18, v12

    const-string v12, "_c"

    move/from16 v19, v13

    move/from16 v20, v14

    if-ge v8, v15, :cond_31

    :try_start_23
    iget-object v15, v3, Landroidx/appcompat/view/menu/o82$a;->c:Ljava/util/List;

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/view/menu/ks1;

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/q02;->x()Landroidx/appcompat/view/menu/q02$b;

    move-result-object v15

    check-cast v15, Landroidx/appcompat/view/menu/ks1$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v13

    iget-object v14, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v14

    move/from16 p3, v11

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v13, v14, v11}, Landroidx/appcompat/view/menu/rv1;->O(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    const-string v13, "_err"

    if-eqz v11, :cond_10

    :try_start_24
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v5

    const-string v9, "Dropping blocked raw event. appId"

    iget-object v10, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    iget-object v11, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v11

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroidx/appcompat/view/menu/mt1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v9, v10, v11}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v5

    iget-object v9, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroidx/appcompat/view/menu/rv1;->X(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v5

    iget-object v9, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroidx/appcompat/view/menu/rv1;->Z(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_b

    :cond_e
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    iget-object v9, v1, Landroidx/appcompat/view/menu/o82;->G:Landroidx/appcompat/view/menu/ba2;

    iget-object v5, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0xb

    const-string v12, "_ev"

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Landroidx/appcompat/view/menu/x92;->Y(Landroidx/appcompat/view/menu/ba2;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_f
    :goto_b
    move/from16 v11, p3

    move-object/from16 v24, v2

    move-object/from16 v25, v6

    move/from16 v12, v18

    move/from16 v13, v19

    move/from16 v14, v20

    const/4 v6, -0x1

    const/4 v9, 0x3

    goto/16 :goto_1f

    :cond_10
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2}, Landroidx/appcompat/view/menu/nz1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-virtual {v15, v2}, Landroidx/appcompat/view/menu/ks1$a;->z(Ljava/lang/String;)Landroidx/appcompat/view/menu/ks1$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v11

    const-string v14, "Renaming ad_impression to _ai"

    invoke-virtual {v11, v14}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v11

    const/4 v14, 0x5

    invoke-virtual {v11, v14}, Landroidx/appcompat/view/menu/pt1;->C(I)Z

    move-result v11

    if-eqz v11, :cond_12

    const/4 v11, 0x0

    :goto_c
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ks1$a;->r()I

    move-result v14

    if-ge v11, v14, :cond_12

    const-string v14, "ad_platform"

    invoke-virtual {v15, v11}, Landroidx/appcompat/view/menu/ks1$a;->C(I)Landroidx/appcompat/view/menu/ms1;

    move-result-object v21

    move-object/from16 v24, v2

    invoke-virtual/range {v21 .. v21}, Landroidx/appcompat/view/menu/ms1;->c0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v15, v11}, Landroidx/appcompat/view/menu/ks1$a;->C(I)Landroidx/appcompat/view/menu/ms1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ms1;->d0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "admob"

    invoke-virtual {v15, v11}, Landroidx/appcompat/view/menu/ks1$a;->C(I)Landroidx/appcompat/view/menu/ms1;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/ms1;->d0()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->M()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v14, "AdMob ad impression logged from app. Potentially duplicative."

    invoke-virtual {v2, v14}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :cond_11
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v24

    goto :goto_c

    :cond_12
    move-object/from16 v24, v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v2

    iget-object v11, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v11, v14}, Landroidx/appcompat/view/menu/rv1;->M(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v14

    move/from16 v21, v8

    const v8, 0x17333

    if-eq v14, v8, :cond_13

    goto :goto_d

    :cond_13
    const-string v8, "_ui"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    goto :goto_e

    :cond_14
    :goto_d
    move-object/from16 v25, v6

    move-object v14, v7

    move-object/from16 v26, v9

    move-object/from16 v27, v10

    goto/16 :goto_15

    :cond_15
    move/from16 v21, v8

    :goto_e
    move-object/from16 v25, v6

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_f
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ks1$a;->r()I

    move-result v6
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    move-object/from16 v26, v9

    const-string v9, "_r"

    if-ge v14, v6, :cond_18

    :try_start_25
    invoke-virtual {v15, v14}, Landroidx/appcompat/view/menu/ks1$a;->C(I)Landroidx/appcompat/view/menu/ms1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/ms1;->c0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {v15, v14}, Landroidx/appcompat/view/menu/ks1$a;->C(I)Landroidx/appcompat/view/menu/ms1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/q02;->x()Landroidx/appcompat/view/menu/q02$b;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/ms1$a;

    const-wide/16 v8, 0x1

    invoke-virtual {v6, v8, v9}, Landroidx/appcompat/view/menu/ms1$a;->t(J)Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/q02;

    check-cast v6, Landroidx/appcompat/view/menu/ms1;

    invoke-virtual {v15, v14, v6}, Landroidx/appcompat/view/menu/ks1$a;->u(ILandroidx/appcompat/view/menu/ms1;)Landroidx/appcompat/view/menu/ks1$a;

    move-object/from16 v27, v10

    const/4 v8, 0x1

    goto :goto_10

    :cond_16
    invoke-virtual {v15, v14}, Landroidx/appcompat/view/menu/ks1$a;->C(I)Landroidx/appcompat/view/menu/ms1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/ms1;->c0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-virtual {v15, v14}, Landroidx/appcompat/view/menu/ks1$a;->C(I)Landroidx/appcompat/view/menu/ms1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/q02;->x()Landroidx/appcompat/view/menu/q02$b;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/ms1$a;

    move-object/from16 v27, v10

    const-wide/16 v9, 0x1

    invoke-virtual {v6, v9, v10}, Landroidx/appcompat/view/menu/ms1$a;->t(J)Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/q02;

    check-cast v6, Landroidx/appcompat/view/menu/ms1;

    invoke-virtual {v15, v14, v6}, Landroidx/appcompat/view/menu/ks1$a;->u(ILandroidx/appcompat/view/menu/ms1;)Landroidx/appcompat/view/menu/ks1$a;

    const/4 v11, 0x1

    goto :goto_10

    :cond_17
    move-object/from16 v27, v10

    :goto_10
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v9, v26

    move-object/from16 v10, v27

    goto :goto_f

    :cond_18
    move-object/from16 v27, v10

    if-nez v8, :cond_19

    if-eqz v2, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v6

    const-string v8, "Marking event as conversion"

    iget-object v10, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v10

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroidx/appcompat/view/menu/mt1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v8, v10}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Landroidx/appcompat/view/menu/ms1;->Z()Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroidx/appcompat/view/menu/ms1$a;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v6

    move-object v10, v7

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/view/menu/ms1$a;->t(J)Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroidx/appcompat/view/menu/ks1$a;->w(Landroidx/appcompat/view/menu/ms1$a;)Landroidx/appcompat/view/menu/ks1$a;

    goto :goto_11

    :cond_19
    move-object v10, v7

    :goto_11
    if-nez v11, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v6

    const-string v7, "Marking event as real-time"

    iget-object v8, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v8

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroidx/appcompat/view/menu/mt1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Landroidx/appcompat/view/menu/ms1;->Z()Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroidx/appcompat/view/menu/ms1$a;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v6

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/view/menu/ms1$a;->t(J)Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroidx/appcompat/view/menu/ks1$a;->w(Landroidx/appcompat/view/menu/ms1$a;)Landroidx/appcompat/view/menu/ks1$a;

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->u0()J

    move-result-wide v29

    iget-object v6, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x1

    invoke-virtual/range {v28 .. v36}, Landroidx/appcompat/view/menu/lg1;->J(JLjava/lang/String;ZZZZZ)Landroidx/appcompat/view/menu/ng1;

    move-result-object v6

    iget-wide v6, v6, Landroidx/appcompat/view/menu/ng1;->e:J

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v8

    iget-object v11, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroidx/appcompat/view/menu/qf1;->A(Ljava/lang/String;)I

    move-result v8

    move-object v14, v10

    int-to-long v10, v8

    cmp-long v6, v6, v10

    if-lez v6, :cond_1b

    invoke-static {v15, v9}, Landroidx/appcompat/view/menu/o82;->t(Landroidx/appcompat/view/menu/ks1$a;Ljava/lang/String;)V

    goto :goto_12

    :cond_1b
    const/16 v18, 0x1

    :goto_12
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/appcompat/view/menu/x92;->J0(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    if-eqz v2, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->u0()J

    move-result-wide v29

    iget-object v6, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    invoke-virtual/range {v28 .. v36}, Landroidx/appcompat/view/menu/lg1;->J(JLjava/lang/String;ZZZZZ)Landroidx/appcompat/view/menu/ng1;

    move-result-object v6

    iget-wide v6, v6, Landroidx/appcompat/view/menu/ng1;->c:J

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v8

    iget-object v9, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroidx/appcompat/view/menu/si1;->p:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/view/menu/qf1;->u(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)I

    move-result v8

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v6

    const-string v7, "Too many conversions. Not logging as conversion. appId"

    iget-object v8, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_13
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ks1$a;->r()I

    move-result v10

    if-ge v9, v10, :cond_1e

    invoke-virtual {v15, v9}, Landroidx/appcompat/view/menu/ks1$a;->C(I)Landroidx/appcompat/view/menu/ms1;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/ms1;->c0()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/q02;->x()Landroidx/appcompat/view/menu/q02$b;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/ms1$a;

    move-object v7, v6

    move v6, v9

    goto :goto_14

    :cond_1c
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/ms1;->c0()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    const/4 v8, 0x1

    :cond_1d
    :goto_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_1e
    if-eqz v8, :cond_1f

    if-eqz v7, :cond_1f

    invoke-virtual {v15, v6}, Landroidx/appcompat/view/menu/ks1$a;->s(I)Landroidx/appcompat/view/menu/ks1$a;

    goto :goto_15

    :cond_1f
    if-eqz v7, :cond_20

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/dx1;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/q02$b;

    check-cast v7, Landroidx/appcompat/view/menu/ms1$a;

    invoke-virtual {v7, v13}, Landroidx/appcompat/view/menu/ms1$a;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v7

    const-wide/16 v8, 0xa

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/view/menu/ms1$a;->t(J)Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/q02;

    check-cast v7, Landroidx/appcompat/view/menu/ms1;

    invoke-virtual {v15, v6, v7}, Landroidx/appcompat/view/menu/ks1$a;->u(ILandroidx/appcompat/view/menu/ms1;)Landroidx/appcompat/view/menu/ks1$a;

    goto :goto_15

    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v6

    const-string v7, "Did not find conversion parameter. appId"

    iget-object v8, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_21
    :goto_15
    if-eqz v2, :cond_25

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ks1$a;->G()Ljava/util/List;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    :goto_16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    const-string v10, "currency"

    const-string v11, "value"

    if-ge v6, v9, :cond_24

    :try_start_26
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/ms1;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ms1;->c0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    move v7, v6

    goto :goto_17

    :cond_22
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/ms1;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ms1;->c0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23

    move v8, v6

    :cond_23
    :goto_17
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_24
    const/4 v6, -0x1

    if-eq v7, v6, :cond_26

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/ms1;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/ms1;->h0()Z

    move-result v6

    if-nez v6, :cond_27

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/ms1;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/ms1;->f0()Z

    move-result v6

    if-nez v6, :cond_27

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->M()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v6, "Value must be specified with a numeric type."

    invoke-virtual {v2, v6}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Landroidx/appcompat/view/menu/ks1$a;->s(I)Landroidx/appcompat/view/menu/ks1$a;

    invoke-static {v15, v12}, Landroidx/appcompat/view/menu/o82;->t(Landroidx/appcompat/view/menu/ks1$a;Ljava/lang/String;)V

    const/16 v2, 0x12

    invoke-static {v15, v2, v11}, Landroidx/appcompat/view/menu/o82;->s(Landroidx/appcompat/view/menu/ks1$a;ILjava/lang/String;)V

    :cond_25
    const/4 v6, -0x1

    :cond_26
    const/4 v9, 0x3

    goto :goto_1a

    :cond_27
    const/4 v6, -0x1

    if-ne v8, v6, :cond_28

    const/4 v9, 0x3

    goto :goto_19

    :cond_28
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/ms1;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ms1;->d0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_29

    goto :goto_19

    :cond_29
    const/4 v8, 0x0

    :goto_18
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v8, v11, :cond_2b

    invoke-virtual {v2, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isLetter(I)Z

    move-result v13

    if-nez v13, :cond_2a

    :goto_19
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->M()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v8, "Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter."

    invoke-virtual {v2, v8}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    invoke-virtual {v15, v7}, Landroidx/appcompat/view/menu/ks1$a;->s(I)Landroidx/appcompat/view/menu/ks1$a;

    invoke-static {v15, v12}, Landroidx/appcompat/view/menu/o82;->t(Landroidx/appcompat/view/menu/ks1$a;Ljava/lang/String;)V

    const/16 v2, 0x13

    invoke-static {v15, v2, v10}, Landroidx/appcompat/view/menu/o82;->s(Landroidx/appcompat/view/menu/ks1$a;ILjava/lang/String;)V

    goto :goto_1a

    :cond_2a
    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v11

    add-int/2addr v8, v11

    goto :goto_18

    :cond_2b
    :goto_1a
    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v7, 0x3e8

    if-eqz v2, :cond_2f

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/q02;

    check-cast v2, Landroidx/appcompat/view/menu/ks1;

    move-object/from16 v10, v27

    invoke-static {v2, v10}, Landroidx/appcompat/view/menu/i92;->F(Landroidx/appcompat/view/menu/ks1;Ljava/lang/String;)Landroidx/appcompat/view/menu/ms1;

    move-result-object v2

    if-nez v2, :cond_2d

    if-eqz v14, :cond_2c

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/ks1$a;->D()J

    move-result-wide v10

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ks1$a;->D()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v2, v10, v7

    if-gtz v2, :cond_2c

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/dx1;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/q02$b;

    check-cast v2, Landroidx/appcompat/view/menu/ks1$a;

    invoke-virtual {v1, v15, v2}, Landroidx/appcompat/view/menu/o82;->K(Landroidx/appcompat/view/menu/ks1$a;Landroidx/appcompat/view/menu/ks1$a;)Z

    move-result v5

    if-eqz v5, :cond_2c

    move/from16 v5, v20

    invoke-virtual {v4, v5, v2}, Landroidx/appcompat/view/menu/ps1$a;->t(ILandroidx/appcompat/view/menu/ks1$a;)Landroidx/appcompat/view/menu/ps1$a;

    move v14, v5

    move/from16 v13, v19

    :goto_1b
    const/4 v2, 0x0

    const/16 v25, 0x0

    goto/16 :goto_1e

    :cond_2c
    move/from16 v5, v20

    move/from16 v13, p3

    move-object v2, v14

    move-object/from16 v25, v15

    :goto_1c
    move v14, v5

    goto :goto_1e

    :cond_2d
    move/from16 v5, v20

    :cond_2e
    move/from16 v7, v19

    goto :goto_1d

    :cond_2f
    move/from16 v5, v20

    const-string v2, "_vs"

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/q02;

    check-cast v2, Landroidx/appcompat/view/menu/ks1;

    move-object/from16 v11, v26

    invoke-static {v2, v11}, Landroidx/appcompat/view/menu/i92;->F(Landroidx/appcompat/view/menu/ks1;Ljava/lang/String;)Landroidx/appcompat/view/menu/ms1;

    move-result-object v2

    if-nez v2, :cond_2e

    if-eqz v25, :cond_30

    invoke-virtual/range {v25 .. v25}, Landroidx/appcompat/view/menu/ks1$a;->D()J

    move-result-wide v10

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ks1$a;->D()J

    move-result-wide v12

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v2, v10, v7

    if-gtz v2, :cond_30

    invoke-virtual/range {v25 .. v25}, Landroidx/appcompat/view/menu/dx1;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/q02$b;

    check-cast v2, Landroidx/appcompat/view/menu/ks1$a;

    invoke-virtual {v1, v2, v15}, Landroidx/appcompat/view/menu/o82;->K(Landroidx/appcompat/view/menu/ks1$a;Landroidx/appcompat/view/menu/ks1$a;)Z

    move-result v7

    if-eqz v7, :cond_30

    move/from16 v7, v19

    invoke-virtual {v4, v7, v2}, Landroidx/appcompat/view/menu/ps1$a;->t(ILandroidx/appcompat/view/menu/ks1$a;)Landroidx/appcompat/view/menu/ps1$a;

    move v14, v5

    move v13, v7

    goto :goto_1b

    :cond_30
    move/from16 v7, v19

    move/from16 v14, p3

    move v13, v7

    move-object v2, v15

    goto :goto_1e

    :goto_1d
    move v13, v7

    move-object v2, v14

    goto :goto_1c

    :goto_1e
    iget-object v5, v3, Landroidx/appcompat/view/menu/o82$a;->c:Ljava/util/List;

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/q02;

    check-cast v7, Landroidx/appcompat/view/menu/ks1;

    move/from16 v8, v21

    invoke-interface {v5, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, p3, 0x1

    invoke-virtual {v4, v15}, Landroidx/appcompat/view/menu/ps1$a;->y(Landroidx/appcompat/view/menu/ks1$a;)Landroidx/appcompat/view/menu/ps1$a;

    move-object v7, v2

    move/from16 v12, v18

    :goto_1f
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v24

    move-object/from16 v6, v25

    const-wide/16 v9, -0x1

    goto/16 :goto_a

    :cond_31
    move/from16 p3, v11

    move-object v11, v9

    const-wide/16 v6, 0x0

    move/from16 v2, p3

    move-wide v13, v6

    const/4 v8, 0x0

    :goto_20
    if-ge v8, v2, :cond_35

    invoke-virtual {v4, v8}, Landroidx/appcompat/view/menu/ps1$a;->s(I)Landroidx/appcompat/view/menu/ks1;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ks1;->b0()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_33

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    invoke-static {v9, v10}, Landroidx/appcompat/view/menu/i92;->F(Landroidx/appcompat/view/menu/ks1;Ljava/lang/String;)Landroidx/appcompat/view/menu/ms1;

    move-result-object v15

    if-eqz v15, :cond_33

    invoke-virtual {v4, v8}, Landroidx/appcompat/view/menu/ps1$a;->G(I)Landroidx/appcompat/view/menu/ps1$a;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v8, v8, -0x1

    :cond_32
    :goto_21
    const/4 v9, 0x1

    goto :goto_23

    :cond_33
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    invoke-static {v9, v11}, Landroidx/appcompat/view/menu/i92;->F(Landroidx/appcompat/view/menu/ks1;Ljava/lang/String;)Landroidx/appcompat/view/menu/ms1;

    move-result-object v9

    if-eqz v9, :cond_32

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ms1;->h0()Z

    move-result v15

    if-eqz v15, :cond_34

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ms1;->X()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    goto :goto_22

    :cond_34
    const/4 v9, 0x0

    :goto_22
    if-eqz v9, :cond_32

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    cmp-long v15, v19, v6

    if-lez v15, :cond_32

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    add-long v13, v13, v19

    goto :goto_21

    :goto_23
    add-int/2addr v8, v9

    goto :goto_20

    :cond_35
    const/4 v2, 0x0

    invoke-virtual {v1, v4, v13, v14, v2}, Landroidx/appcompat/view/menu/o82;->u(Landroidx/appcompat/view/menu/ps1$a;JZ)V

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ps1$a;->T0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    const-string v8, "_se"

    if-eqz v5, :cond_37

    :try_start_27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/ks1;

    const-string v9, "_s"

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ks1;->b0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ps1$a;->N0()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v8}, Landroidx/appcompat/view/menu/lg1;->L0(Ljava/lang/String;Ljava/lang/String;)V

    :cond_37
    const-string v2, "_sid"

    invoke-static {v4, v2}, Landroidx/appcompat/view/menu/i92;->y(Landroidx/appcompat/view/menu/ps1$a;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_38

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v13, v14, v2}, Landroidx/appcompat/view/menu/o82;->u(Landroidx/appcompat/view/menu/ps1$a;JZ)V

    goto :goto_24

    :cond_38
    invoke-static {v4, v8}, Landroidx/appcompat/view/menu/i92;->y(Landroidx/appcompat/view/menu/ps1$a;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_39

    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/ps1$a;->M(I)Landroidx/appcompat/view/menu/ps1$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v5, "Session engagement user property is in the bundle without session ID. appId"

    iget-object v8, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_39
    :goto_24
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/i92;->T(Landroidx/appcompat/view/menu/ps1$a;)V

    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v2

    sget-object v5, Landroidx/appcompat/view/menu/si1;->T0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v2, v5}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroidx/appcompat/view/menu/lg1;->D0(Ljava/lang/String;)Landroidx/appcompat/view/menu/rw1;

    move-result-object v5

    if-nez v5, :cond_3a

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v5

    const-string v8, "Cannot fix consent fields without appInfo. appId"

    invoke-static {v2}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v8, v2}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_25

    :cond_3a
    invoke-virtual {v1, v5, v4}, Landroidx/appcompat/view/menu/o82;->v(Landroidx/appcompat/view/menu/rw1;Landroidx/appcompat/view/menu/ps1$a;)V

    :cond_3b
    :goto_25
    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual {v4, v8, v9}, Landroidx/appcompat/view/menu/ps1$a;->q0(J)Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v2

    const-wide/high16 v8, -0x8000000000000000L

    invoke-virtual {v2, v8, v9}, Landroidx/appcompat/view/menu/ps1$a;->Z(J)Landroidx/appcompat/view/menu/ps1$a;

    const/4 v2, 0x0

    :goto_26
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ps1$a;->r()I

    move-result v5

    if-ge v2, v5, :cond_3e

    invoke-virtual {v4, v2}, Landroidx/appcompat/view/menu/ps1$a;->s(I)Landroidx/appcompat/view/menu/ks1;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ks1;->Y()J

    move-result-wide v8

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ps1$a;->R()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_3c

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ks1;->Y()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Landroidx/appcompat/view/menu/ps1$a;->q0(J)Landroidx/appcompat/view/menu/ps1$a;

    :cond_3c
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ks1;->Y()J

    move-result-wide v8

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ps1$a;->L()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-lez v8, :cond_3d

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ks1;->Y()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Landroidx/appcompat/view/menu/ps1$a;->Z(J)Landroidx/appcompat/view/menu/ps1$a;

    :cond_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    :cond_3e
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ps1$a;->K0()Landroidx/appcompat/view/menu/ps1$a;

    invoke-static {}, Landroidx/appcompat/view/menu/sc2;->a()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v2

    iget-object v5, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v5

    sget-object v8, Landroidx/appcompat/view/menu/si1;->L0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v2, v5, v8}, Landroidx/appcompat/view/menu/qf1;->B(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    iget-object v2, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/x92;->D0(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/o82;->Q(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lz1;->x()Z

    move-result v2

    if-eqz v2, :cond_43

    iget-object v2, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ps1;->u0()Z

    move-result v2

    if-eqz v2, :cond_43

    const/4 v2, 0x0

    :goto_27
    iget-object v5, v3, Landroidx/appcompat/view/menu/o82$a;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_43

    iget-object v5, v3, Landroidx/appcompat/view/menu/o82$a;->c:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/ks1;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/q02;->x()Landroidx/appcompat/view/menu/q02$b;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/ks1$a;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ks1$a;->G()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_42

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/ms1;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ms1;->c0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3f

    iget-object v8, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/ps1;->j()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v9

    iget-object v10, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroidx/appcompat/view/menu/si1;->X:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v9, v10, v11}, Landroidx/appcompat/view/menu/qf1;->u(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)I

    move-result v9

    if-lt v8, v9, :cond_41

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v8

    iget-object v9, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Landroidx/appcompat/view/menu/si1;->N0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/view/menu/qf1;->B(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z

    move-result v8

    if-eqz v8, :cond_40

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/x92;->S0()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroidx/appcompat/view/menu/ms1;->Z()Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v9

    const-string v10, "_tu"

    invoke-virtual {v9, v10}, Landroidx/appcompat/view/menu/ms1$a;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroidx/appcompat/view/menu/ms1$a;->y(Ljava/lang/String;)Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/q02;

    check-cast v9, Landroidx/appcompat/view/menu/ms1;

    invoke-virtual {v5, v9}, Landroidx/appcompat/view/menu/ks1$a;->x(Landroidx/appcompat/view/menu/ms1;)Landroidx/appcompat/view/menu/ks1$a;

    goto :goto_28

    :cond_40
    const/4 v8, 0x0

    :goto_28
    invoke-static {}, Landroidx/appcompat/view/menu/ms1;->Z()Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v9

    const-string v10, "_tr"

    invoke-virtual {v9, v10}, Landroidx/appcompat/view/menu/ms1$a;->w(Ljava/lang/String;)Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v9

    const-wide/16 v10, 0x1

    invoke-virtual {v9, v10, v11}, Landroidx/appcompat/view/menu/ms1$a;->t(J)Landroidx/appcompat/view/menu/ms1$a;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/q02;

    check-cast v9, Landroidx/appcompat/view/menu/ms1;

    invoke-virtual {v5, v9}, Landroidx/appcompat/view/menu/ks1$a;->x(Landroidx/appcompat/view/menu/ms1;)Landroidx/appcompat/view/menu/ks1$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    move-result-object v9

    iget-object v10, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v9, v10, v11, v5, v8}, Landroidx/appcompat/view/menu/i92;->H(Ljava/lang/String;Landroidx/appcompat/view/menu/ps1;Landroidx/appcompat/view/menu/ks1$a;Ljava/lang/String;)Landroidx/appcompat/view/menu/y72;

    move-result-object v8

    if-eqz v8, :cond_41

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v9

    const-string v10, "Generated trigger URI. appId, uri"

    iget-object v11, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v11

    iget-object v13, v8, Landroidx/appcompat/view/menu/y72;->m:Ljava/lang/String;

    invoke-virtual {v9, v10, v11, v13}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v9

    iget-object v10, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Landroidx/appcompat/view/menu/lg1;->i0(Ljava/lang/String;Landroidx/appcompat/view/menu/y72;)Z

    iget-object v8, v1, Landroidx/appcompat/view/menu/o82;->q:Ljava/util/Set;

    iget-object v9, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_41
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/q02;

    check-cast v5, Landroidx/appcompat/view/menu/ks1;

    invoke-virtual {v4, v2, v5}, Landroidx/appcompat/view/menu/ps1$a;->u(ILandroidx/appcompat/view/menu/ks1;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_42
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_27

    :cond_43
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ps1$a;->c0()Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->X()Landroidx/appcompat/view/menu/we2;

    move-result-object v8

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ps1$a;->N0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ps1$a;->T0()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ps1$a;->U0()Ljava/util/List;

    move-result-object v11

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ps1$a;->R()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ps1$a;->L()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual/range {v8 .. v13}, Landroidx/appcompat/view/menu/we2;->z(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/appcompat/view/menu/ps1$a;->C(Ljava/lang/Iterable;)Landroidx/appcompat/view/menu/ps1$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v2

    iget-object v5, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/appcompat/view/menu/qf1;->L(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/x92;->U0()Ljava/security/SecureRandom;

    move-result-object v8

    const/4 v12, 0x0

    :goto_29
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ps1$a;->r()I

    move-result v9

    if-ge v12, v9, :cond_5b

    invoke-virtual {v4, v12}, Landroidx/appcompat/view/menu/ps1$a;->s(I)Landroidx/appcompat/view/menu/ks1;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/q02;->x()Landroidx/appcompat/view/menu/q02$b;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/ks1$a;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v10

    const-string v11, "_ep"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    const-string v11, "_sr"

    if-eqz v10, :cond_48

    :try_start_28
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/view/menu/q02;

    check-cast v10, Landroidx/appcompat/view/menu/ks1;

    const-string v13, "_en"

    invoke-static {v10, v13}, Landroidx/appcompat/view/menu/i92;->e0(Landroidx/appcompat/view/menu/ks1;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/view/menu/gi1;

    if-nez v13, :cond_44

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v13

    iget-object v14, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroidx/appcompat/view/menu/lg1;->C0(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/gi1;

    move-result-object v13

    if-eqz v13, :cond_44

    invoke-interface {v2, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    if-eqz v13, :cond_47

    iget-object v10, v13, Landroidx/appcompat/view/menu/gi1;->i:Ljava/lang/Long;

    if-nez v10, :cond_47

    iget-object v10, v13, Landroidx/appcompat/view/menu/gi1;->j:Ljava/lang/Long;

    if-eqz v10, :cond_45

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    const-wide/16 v19, 0x1

    cmp-long v10, v14, v19

    if-lez v10, :cond_45

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    iget-object v10, v13, Landroidx/appcompat/view/menu/gi1;->j:Ljava/lang/Long;

    invoke-static {v9, v11, v10}, Landroidx/appcompat/view/menu/i92;->R(Landroidx/appcompat/view/menu/ks1$a;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_45
    iget-object v10, v13, Landroidx/appcompat/view/menu/gi1;->k:Ljava/lang/Boolean;

    if-eqz v10, :cond_46

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_46

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    const-string v10, "_efs"

    const-wide/16 v13, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroidx/appcompat/view/menu/i92;->R(Landroidx/appcompat/view/menu/ks1$a;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_46
    invoke-virtual {v9}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/view/menu/q02;

    check-cast v10, Landroidx/appcompat/view/menu/ks1;

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_47
    invoke-virtual {v4, v12, v9}, Landroidx/appcompat/view/menu/ps1$a;->t(ILandroidx/appcompat/view/menu/ks1$a;)Landroidx/appcompat/view/menu/ps1$a;

    :goto_2a
    move-object v15, v3

    move-object v1, v4

    move v3, v12

    const-wide/16 v12, 0x1

    goto/16 :goto_33

    :cond_48
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v10

    iget-object v13, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v13}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroidx/appcompat/view/menu/rv1;->y(Ljava/lang/String;)J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ks1$a;->D()J

    move-result-wide v6

    invoke-static {v6, v7, v13, v14}, Landroidx/appcompat/view/menu/x92;->y(JJ)J

    move-result-wide v6

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/view/menu/q02;

    check-cast v10, Landroidx/appcompat/view/menu/ks1;

    const-string v15, "_dbg"

    const-wide/16 v19, 0x1

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_4d

    if-nez v1, :cond_49

    goto :goto_2c

    :cond_49
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/ks1;->c0()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroidx/appcompat/view/menu/ms1;

    move-object/from16 p3, v10

    invoke-virtual/range {v19 .. v19}, Landroidx/appcompat/view/menu/ms1;->c0()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4c

    invoke-virtual/range {v19 .. v19}, Landroidx/appcompat/view/menu/ms1;->X()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4b

    instance-of v10, v1, Ljava/lang/String;

    if-eqz v10, :cond_4a

    invoke-virtual/range {v19 .. v19}, Landroidx/appcompat/view/menu/ms1;->d0()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4b

    :cond_4a
    instance-of v10, v1, Ljava/lang/Double;

    if-eqz v10, :cond_4d

    invoke-virtual/range {v19 .. v19}, Landroidx/appcompat/view/menu/ms1;->G()D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    :cond_4b
    const/4 v1, 0x1

    goto :goto_2d

    :cond_4c
    move-object/from16 v10, p3

    goto :goto_2b

    :cond_4d
    :goto_2c
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v1

    iget-object v10, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v10, v15}, Landroidx/appcompat/view/menu/rv1;->I(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    :goto_2d
    if-gtz v1, :cond_4e

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v6

    const-string v7, "Sample rate must be positive. event, rate"

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v7, v10, v1}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/q02;

    check-cast v1, Landroidx/appcompat/view/menu/ks1;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v12, v9}, Landroidx/appcompat/view/menu/ps1$a;->t(ILandroidx/appcompat/view/menu/ks1$a;)Landroidx/appcompat/view/menu/ps1$a;

    goto/16 :goto_2a

    :cond_4e
    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/appcompat/view/menu/gi1;

    if-nez v10, :cond_4f

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v10

    iget-object v15, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v19, v13

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v15, v13}, Landroidx/appcompat/view/menu/lg1;->C0(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/gi1;

    move-result-object v10

    if-nez v10, :cond_50

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v10

    const-string v13, "Event being bundled has no eventAggregate. appId, eventName"

    iget-object v14, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v13, v14, v15}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Landroidx/appcompat/view/menu/gi1;

    iget-object v13, v3, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v13}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v27

    const-wide/16 v28, 0x1

    const-wide/16 v30, 0x1

    const-wide/16 v32, 0x1

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ks1$a;->D()J

    move-result-wide v34

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v25, v10

    invoke-direct/range {v25 .. v41}, Landroidx/appcompat/view/menu/gi1;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_2e

    :cond_4f
    move-wide/from16 v19, v13

    :cond_50
    :goto_2e
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v13

    check-cast v13, Landroidx/appcompat/view/menu/q02;

    check-cast v13, Landroidx/appcompat/view/menu/ks1;

    const-string v14, "_eid"

    invoke-static {v13, v14}, Landroidx/appcompat/view/menu/i92;->e0(Landroidx/appcompat/view/menu/ks1;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    if-eqz v13, :cond_51

    const/4 v14, 0x1

    goto :goto_2f

    :cond_51
    const/4 v14, 0x0

    :goto_2f
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/4 v15, 0x1

    if-ne v1, v15, :cond_54

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/q02;

    check-cast v1, Landroidx/appcompat/view/menu/ks1;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, v10, Landroidx/appcompat/view/menu/gi1;->i:Ljava/lang/Long;

    if-nez v1, :cond_52

    iget-object v1, v10, Landroidx/appcompat/view/menu/gi1;->j:Ljava/lang/Long;

    if-nez v1, :cond_52

    iget-object v1, v10, Landroidx/appcompat/view/menu/gi1;->k:Ljava/lang/Boolean;

    if-eqz v1, :cond_53

    :cond_52
    const/4 v1, 0x0

    invoke-virtual {v10, v1, v1, v1}, Landroidx/appcompat/view/menu/gi1;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Landroidx/appcompat/view/menu/gi1;

    move-result-object v6

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_53
    invoke-virtual {v4, v12, v9}, Landroidx/appcompat/view/menu/ps1$a;->t(ILandroidx/appcompat/view/menu/ks1$a;)Landroidx/appcompat/view/menu/ps1$a;

    goto/16 :goto_2a

    :cond_54
    invoke-virtual {v8, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    if-nez v15, :cond_56

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    move-object v15, v3

    move-object/from16 p3, v4

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v9, v11, v1}, Landroidx/appcompat/view/menu/i92;->R(Landroidx/appcompat/view/menu/ks1$a;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/q02;

    check-cast v1, Landroidx/appcompat/view/menu/ks1;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v10, v3, v1, v3}, Landroidx/appcompat/view/menu/gi1;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Landroidx/appcompat/view/menu/gi1;

    move-result-object v10

    :cond_55
    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ks1$a;->D()J

    move-result-wide v3

    invoke-virtual {v10, v3, v4, v6, v7}, Landroidx/appcompat/view/menu/gi1;->b(JJ)Landroidx/appcompat/view/menu/gi1;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p3

    move v3, v12

    const-wide/16 v12, 0x1

    goto/16 :goto_32

    :cond_56
    move-object v15, v3

    move-object/from16 p3, v4

    iget-object v3, v10, Landroidx/appcompat/view/menu/gi1;->h:Ljava/lang/Long;

    if-eqz v3, :cond_57

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move/from16 v21, v12

    move-object/from16 v24, v13

    goto :goto_30

    :cond_57
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ks1$a;->A()J

    move-result-wide v3

    move/from16 v21, v12

    move-object/from16 v24, v13

    move-wide/from16 v12, v19

    invoke-static {v3, v4, v12, v13}, Landroidx/appcompat/view/menu/x92;->y(JJ)J

    move-result-wide v3

    :goto_30
    cmp-long v3, v3, v6

    if-eqz v3, :cond_5a

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    const-string v3, "_efs"

    const-wide/16 v12, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v9, v3, v4}, Landroidx/appcompat/view/menu/i92;->R(Landroidx/appcompat/view/menu/ks1$a;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v9, v11, v1}, Landroidx/appcompat/view/menu/i92;->R(Landroidx/appcompat/view/menu/ks1$a;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/q02;

    check-cast v1, Landroidx/appcompat/view/menu/ks1;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-virtual {v10, v4, v1, v3}, Landroidx/appcompat/view/menu/gi1;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Landroidx/appcompat/view/menu/gi1;

    move-result-object v10

    :cond_58
    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ks1$a;->D()J

    move-result-wide v3

    invoke-virtual {v10, v3, v4, v6, v7}, Landroidx/appcompat/view/menu/gi1;->b(JJ)Landroidx/appcompat/view/menu/gi1;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    :goto_31
    move-object/from16 v1, p3

    move/from16 v3, v21

    goto :goto_32

    :cond_5a
    const-wide/16 v12, 0x1

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ks1$a;->F()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v24

    const/4 v3, 0x0

    invoke-virtual {v10, v4, v3, v3}, Landroidx/appcompat/view/menu/gi1;->c(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)Landroidx/appcompat/view/menu/gi1;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :goto_32
    invoke-virtual {v1, v3, v9}, Landroidx/appcompat/view/menu/ps1$a;->t(ILandroidx/appcompat/view/menu/ks1$a;)Landroidx/appcompat/view/menu/ps1$a;

    :goto_33
    add-int/lit8 v3, v3, 0x1

    move-object v4, v1

    move v12, v3

    move-object v3, v15

    const-wide/16 v6, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_29

    :cond_5b
    move-object v15, v3

    move-object v1, v4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ps1$a;->r()I

    move-result v4

    if-ge v3, v4, :cond_5c

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ps1$a;->o0()Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/appcompat/view/menu/ps1$a;->I(Ljava/lang/Iterable;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_5c
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/gi1;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/lg1;->U(Landroidx/appcompat/view/menu/gi1;)V

    goto :goto_34

    :cond_5d
    move-object v2, v15

    goto :goto_35

    :cond_5e
    move-object v1, v4

    move-object v2, v3

    :goto_35
    iget-object v3, v2, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/lg1;->D0(Ljava/lang/String;)Landroidx/appcompat/view/menu/rw1;

    move-result-object v4

    if-nez v4, :cond_5f

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v4

    const-string v5, "Bundling raw events w/o app info. appId"

    iget-object v6, v2, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3a

    :cond_5f
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ps1$a;->r()I

    move-result v5

    if-lez v5, :cond_64

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/rw1;->i0()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_60

    invoke-virtual {v1, v5, v6}, Landroidx/appcompat/view/menu/ps1$a;->i0(J)Landroidx/appcompat/view/menu/ps1$a;

    goto :goto_36

    :cond_60
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ps1$a;->C0()Landroidx/appcompat/view/menu/ps1$a;

    :goto_36
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/rw1;->m0()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_61

    goto :goto_37

    :cond_61
    move-wide v5, v7

    :goto_37
    cmp-long v7, v5, v9

    if-eqz v7, :cond_62

    invoke-virtual {v1, v5, v6}, Landroidx/appcompat/view/menu/ps1$a;->m0(J)Landroidx/appcompat/view/menu/ps1$a;

    goto :goto_38

    :cond_62
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ps1$a;->E0()Landroidx/appcompat/view/menu/ps1$a;

    :goto_38
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/rw1;->p()V

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/rw1;->k0()J

    move-result-wide v5

    long-to-int v5, v5

    invoke-virtual {v1, v5}, Landroidx/appcompat/view/menu/ps1$a;->d0(I)Landroidx/appcompat/view/menu/ps1$a;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ps1$a;->R()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/view/menu/rw1;->j0(J)V

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ps1$a;->L()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/view/menu/rw1;->f0(J)V

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/rw1;->s0()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_63

    invoke-virtual {v1, v5}, Landroidx/appcompat/view/menu/ps1$a;->F0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    goto :goto_39

    :cond_63
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ps1$a;->s0()Landroidx/appcompat/view/menu/ps1$a;

    :goto_39
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/appcompat/view/menu/lg1;->V(Landroidx/appcompat/view/menu/rw1;)V

    :cond_64
    :goto_3a
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ps1$a;->r()I

    move-result v4

    if-lez v4, :cond_68

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v4

    iget-object v5, v2, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/rv1;->L(Ljava/lang/String;)Landroidx/appcompat/view/menu/rr1;

    move-result-object v4

    if-eqz v4, :cond_66

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/rr1;->b0()Z

    move-result v5

    if-nez v5, :cond_65

    goto :goto_3b

    :cond_65
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/rr1;->L()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroidx/appcompat/view/menu/ps1$a;->H(J)Landroidx/appcompat/view/menu/ps1$a;

    goto :goto_3c

    :cond_66
    :goto_3b
    iget-object v4, v2, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ps1;->k0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_67

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Landroidx/appcompat/view/menu/ps1$a;->H(J)Landroidx/appcompat/view/menu/ps1$a;

    goto :goto_3c

    :cond_67
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v4

    const-string v5, "Did not find measurement config or missing version info. appId"

    iget-object v6, v2, Landroidx/appcompat/view/menu/o82$a;->a:Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3c
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v4

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/q02;

    check-cast v1, Landroidx/appcompat/view/menu/ps1;

    move/from16 v12, v18

    invoke-virtual {v4, v1, v12}, Landroidx/appcompat/view/menu/lg1;->d0(Landroidx/appcompat/view/menu/ps1;Z)Z

    :cond_68
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    iget-object v2, v2, Landroidx/appcompat/view/menu/o82$a;->b:Ljava/util/List;

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/m82;->u()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rowid in ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    :goto_3d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v12, v5, :cond_6a

    if-eqz v12, :cond_69

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_69
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x1

    goto :goto_3d

    :cond_6a
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lg1;->B()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "raw_events"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_6b

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v5, "Deleted fewer rows from raw events table than expected"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v5, v4, v2}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_6b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lg1;->B()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    :try_start_29
    const-string v4, "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"

    filled-new-array {v3, v3}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_29
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_29 .. :try_end_29} :catch_9
    .catchall {:try_start_29 .. :try_end_29} :catchall_1

    goto :goto_3e

    :catch_9
    move-exception v0

    move-object v2, v0

    :try_start_2a
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v4, "Failed to remove unused event metadata. appId"

    invoke-static {v3}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3, v2}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3e
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lg1;->T0()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lg1;->R0()V

    const/4 v1, 0x1

    return v1

    :cond_6c
    :goto_3f
    :try_start_2b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lg1;->T0()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lg1;->R0()V

    const/4 v1, 0x0

    return v1

    :goto_40
    if-eqz v4, :cond_6d

    :try_start_2c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6d
    throw v1
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1

    :goto_41
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    throw v1
.end method

.method public final Q(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->B:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/lz1;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/lg1;->I0(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/lz1;->c:Landroidx/appcompat/view/menu/lz1;

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/o82;->C(Ljava/lang/String;Landroidx/appcompat/view/menu/lz1;)V

    :cond_1
    return-object v0
.end method

.method public final R(Landroidx/appcompat/view/menu/cb2;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/view/menu/w82;

    invoke-direct {v1, p0, p1}, Landroidx/appcompat/view/menu/w82;-><init>(Landroidx/appcompat/view/menu/o82;Landroidx/appcompat/view/menu/cb2;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/jw1;->w(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x7530

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    iget-object p1, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {p1}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to get app instance id. appId"

    invoke-virtual {v1, v2, p1, v0}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final S(Landroidx/appcompat/view/menu/if1;)V
    .locals 1

    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/o82;->W(Ljava/lang/String;)Landroidx/appcompat/view/menu/cb2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/o82;->T(Landroidx/appcompat/view/menu/if1;Landroidx/appcompat/view/menu/cb2;)V

    :cond_0
    return-void
.end method

.method public final T(Landroidx/appcompat/view/menu/if1;Landroidx/appcompat/view/menu/cb2;)V
    .locals 10

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->n:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object v0, v0, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    invoke-static {p2}, Landroidx/appcompat/view/menu/o82;->d0(Landroidx/appcompat/view/menu/cb2;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Landroidx/appcompat/view/menu/cb2;->t:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/o82;->g(Landroidx/appcompat/view/menu/cb2;)Landroidx/appcompat/view/menu/rw1;

    return-void

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/if1;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/if1;-><init>(Landroidx/appcompat/view/menu/if1;)V

    const/4 p1, 0x0

    iput-boolean p1, v0, Landroidx/appcompat/view/menu/if1;->q:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lg1;->Q0()V

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    iget-object v2, v0, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object v3, v3, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/lg1;->B0(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/if1;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Landroidx/appcompat/view/menu/if1;->n:Ljava/lang/String;

    iget-object v3, v0, Landroidx/appcompat/view/menu/if1;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "Updating a conditional user property with different origin. name, origin, origin (from DB)"

    iget-object v4, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v4

    iget-object v5, v0, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object v5, v5, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/mt1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroidx/appcompat/view/menu/if1;->n:Ljava/lang/String;

    iget-object v6, v1, Landroidx/appcompat/view/menu/if1;->n:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    iget-boolean v2, v1, Landroidx/appcompat/view/menu/if1;->q:Z

    if-eqz v2, :cond_3

    iget-object v3, v1, Landroidx/appcompat/view/menu/if1;->n:Ljava/lang/String;

    iput-object v3, v0, Landroidx/appcompat/view/menu/if1;->n:Ljava/lang/String;

    iget-wide v3, v1, Landroidx/appcompat/view/menu/if1;->p:J

    iput-wide v3, v0, Landroidx/appcompat/view/menu/if1;->p:J

    iget-wide v3, v1, Landroidx/appcompat/view/menu/if1;->t:J

    iput-wide v3, v0, Landroidx/appcompat/view/menu/if1;->t:J

    iget-object v3, v1, Landroidx/appcompat/view/menu/if1;->r:Ljava/lang/String;

    iput-object v3, v0, Landroidx/appcompat/view/menu/if1;->r:Ljava/lang/String;

    iget-object v3, v1, Landroidx/appcompat/view/menu/if1;->u:Landroidx/appcompat/view/menu/oi1;

    iput-object v3, v0, Landroidx/appcompat/view/menu/if1;->u:Landroidx/appcompat/view/menu/oi1;

    iput-boolean v2, v0, Landroidx/appcompat/view/menu/if1;->q:Z

    new-instance v2, Landroidx/appcompat/view/menu/v92;

    iget-object v3, v0, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object v5, v3, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    iget-object v4, v1, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-wide v6, v4, Landroidx/appcompat/view/menu/v92;->o:J

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/v92;->d()Ljava/lang/Object;

    move-result-object v8

    iget-object v1, v1, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object v9, v1, Landroidx/appcompat/view/menu/v92;->s:Ljava/lang/String;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Landroidx/appcompat/view/menu/v92;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    goto :goto_1

    :cond_3
    iget-object v1, v0, Landroidx/appcompat/view/menu/if1;->r:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Landroidx/appcompat/view/menu/v92;

    iget-object v1, v0, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object v3, v1, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    iget-wide v4, v0, Landroidx/appcompat/view/menu/if1;->p:J

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/v92;->d()Ljava/lang/Object;

    move-result-object v6

    iget-object v1, v0, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object v7, v1, Landroidx/appcompat/view/menu/v92;->s:Ljava/lang/String;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/view/menu/v92;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    iput-object p1, v0, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    const/4 p1, 0x1

    iput-boolean p1, v0, Landroidx/appcompat/view/menu/if1;->q:Z

    :cond_4
    :goto_1
    iget-boolean v1, v0, Landroidx/appcompat/view/menu/if1;->q:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    new-instance v9, Landroidx/appcompat/view/menu/z92;

    iget-object v2, v0, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Landroidx/appcompat/view/menu/if1;->n:Ljava/lang/String;

    iget-object v5, v1, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    iget-wide v6, v1, Landroidx/appcompat/view/menu/v92;->o:J

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/v92;->d()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/view/menu/z92;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroidx/appcompat/view/menu/lg1;->e0(Landroidx/appcompat/view/menu/z92;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "User property updated immediately"

    iget-object v3, v0, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    iget-object v4, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v4

    iget-object v5, v9, Landroidx/appcompat/view/menu/z92;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/mt1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "(2)Too many active user properties, ignoring"

    iget-object v3, v0, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v4

    iget-object v5, v9, Landroidx/appcompat/view/menu/z92;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/mt1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v9, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    if-eqz p1, :cond_6

    iget-object p1, v0, Landroidx/appcompat/view/menu/if1;->u:Landroidx/appcompat/view/menu/oi1;

    if-eqz p1, :cond_6

    new-instance p1, Landroidx/appcompat/view/menu/oi1;

    iget-object v1, v0, Landroidx/appcompat/view/menu/if1;->u:Landroidx/appcompat/view/menu/oi1;

    iget-wide v2, v0, Landroidx/appcompat/view/menu/if1;->p:J

    invoke-direct {p1, v1, v2, v3}, Landroidx/appcompat/view/menu/oi1;-><init>(Landroidx/appcompat/view/menu/oi1;J)V

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/o82;->Y(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/lg1;->b0(Landroidx/appcompat/view/menu/if1;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Conditional property added"

    iget-object v1, v0, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    iget-object v2, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v2

    iget-object v3, v0, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object v3, v3, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/mt1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/v92;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v2, v0}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p2, "Too many conditional properties, ignoring"

    iget-object v1, v0, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    invoke-static {v1}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v2

    iget-object v3, v0, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object v3, v3, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/mt1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/v92;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v2, v0}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/lg1;->T0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/lg1;->R0()V

    return-void

    :goto_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    throw p1
.end method

.method public final U(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V
    .locals 11

    iget-object v0, p2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Landroidx/appcompat/view/menu/wt1;->b(Landroidx/appcompat/view/menu/oi1;)Landroidx/appcompat/view/menu/wt1;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    iget-object v1, p1, Landroidx/appcompat/view/menu/wt1;->d:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    iget-object v3, p2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/lg1;->A0(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/x92;->M(Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v1

    iget-object v2, p2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/qf1;->y(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/x92;->V(Landroidx/appcompat/view/menu/wt1;I)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/wt1;->a()Landroidx/appcompat/view/menu/oi1;

    move-result-object p1

    iget-object v0, p1, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    const-string v1, "_cmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "_cis"

    const-string v3, "referrer API v2"

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/ei1;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    const-string v4, "gclid"

    invoke-virtual {v0, v4}, Landroidx/appcompat/view/menu/ei1;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/v92;

    const-string v6, "_lgclid"

    iget-wide v7, p1, Landroidx/appcompat/view/menu/oi1;->p:J

    const-string v10, "auto"

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroidx/appcompat/view/menu/v92;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/o82;->x(Landroidx/appcompat/view/menu/v92;Landroidx/appcompat/view/menu/cb2;)V

    :cond_0
    invoke-static {}, Landroidx/appcompat/view/menu/nb2;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/appcompat/view/menu/nb2;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/ei1;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    const-string v1, "gbraid"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/ei1;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroidx/appcompat/view/menu/v92;

    const-string v3, "_gbraid"

    iget-wide v4, p1, Landroidx/appcompat/view/menu/oi1;->p:J

    const-string v7, "auto"

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/appcompat/view/menu/v92;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/o82;->x(Landroidx/appcompat/view/menu/v92;Landroidx/appcompat/view/menu/cb2;)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/o82;->q(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    return-void
.end method

.method public final V(Landroidx/appcompat/view/menu/rw1;)V
    .locals 11

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rw1;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rw1;->r0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rw1;->t0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0xcc

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroidx/appcompat/view/menu/o82;->z(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V

    return-void

    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rw1;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rw1;->r0()Ljava/lang/String;

    move-result-object v1

    :cond_1
    sget-object v2, Landroidx/appcompat/view/menu/si1;->g:Landroidx/appcompat/view/menu/us1;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v4, Landroidx/appcompat/view/menu/si1;->h:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v4, v3}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "config/app/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "platform"

    const-string v4, "android"

    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "gmp_version"

    const-string v4, "82001"

    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "runtime_version"

    const-string v4, "0"

    invoke-virtual {v1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rw1;->t0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Fetching remote configuration"

    invoke-virtual {v1, v2, v6}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/appcompat/view/menu/rv1;->L(Ljava/lang/String;)Landroidx/appcompat/view/menu/rr1;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroidx/appcompat/view/menu/rv1;->P(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v3, Landroidx/appcompat/view/menu/o4;

    invoke-direct {v3}, Landroidx/appcompat/view/menu/o4;-><init>()V

    const-string v1, "If-Modified-Since"

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroidx/appcompat/view/menu/rv1;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez v3, :cond_3

    new-instance v2, Landroidx/appcompat/view/menu/o4;

    invoke-direct {v2}, Landroidx/appcompat/view/menu/o4;-><init>()V

    move-object v3, v2

    :cond_3
    const-string v2, "If-None-Match"

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v9, v3

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/o82;->t:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->g0()Landroidx/appcompat/view/menu/cu1;

    move-result-object v5

    new-instance v10, Landroidx/appcompat/view/menu/y82;

    invoke-direct {v10, p0}, Landroidx/appcompat/view/menu/y82;-><init>(Landroidx/appcompat/view/menu/o82;)V

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/m82;->u()V

    invoke-static {v7}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v10}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/ru1;

    const/4 v8, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Landroidx/appcompat/view/menu/ru1;-><init>(Landroidx/appcompat/view/menu/cu1;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Landroidx/appcompat/view/menu/au1;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/jw1;->z(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rw1;->t0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {v1, v2, p1, v0}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final W(Ljava/lang/String;)Landroidx/appcompat/view/menu/cb2;
    .locals 40

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/lg1;->D0(Ljava/lang/String;)Landroidx/appcompat/view/menu/rw1;

    move-result-object v15

    const/4 v0, 0x0

    if-eqz v15, :cond_3

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/rw1;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    move-object/from16 v14, p0

    invoke-virtual {v14, v15}, Landroidx/appcompat/view/menu/o82;->m(Landroidx/appcompat/view/menu/rw1;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "App version does not match; dropping. appId"

    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroidx/appcompat/view/menu/o82;->Q(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v28

    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    sget-object v2, Landroidx/appcompat/view/menu/si1;->T0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p1}, Landroidx/appcompat/view/menu/o82;->a0(Ljava/lang/String;)Landroidx/appcompat/view/menu/fh1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fh1;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v28 .. v28}, Landroidx/appcompat/view/menu/lz1;->b()I

    move-result v2

    :goto_0
    move-object/from16 v35, v0

    move/from16 v34, v2

    goto :goto_1

    :cond_2
    const-string v0, ""

    const/16 v2, 0x64

    goto :goto_0

    :goto_1
    new-instance v39, Landroidx/appcompat/view/menu/cb2;

    move-object/from16 v0, v39

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/rw1;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/rw1;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/rw1;->z()J

    move-result-wide v4

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/rw1;->v0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/rw1;->g0()J

    move-result-wide v7

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/rw1;->a0()J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/rw1;->r()Z

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/rw1;->i()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v14, v16

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/rw1;->v()J

    move-result-wide v16

    move-object/from16 v37, v15

    move-wide/from16 v15, v16

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/view/menu/rw1;->q()Z

    move-result v20

    const/16 v21, 0x0

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/view/menu/rw1;->r0()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/view/menu/rw1;->q0()Ljava/lang/Boolean;

    move-result-object v23

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/view/menu/rw1;->c0()J

    move-result-wide v24

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/view/menu/rw1;->n()Ljava/util/List;

    move-result-object v26

    const/16 v27, 0x0

    invoke-virtual/range {v28 .. v28}, Landroidx/appcompat/view/menu/lz1;->v()Ljava/lang/String;

    move-result-object v28

    const-string v29, ""

    const/16 v30, 0x0

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/view/menu/rw1;->t()Z

    move-result v31

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/view/menu/rw1;->p0()J

    move-result-wide v32

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/view/menu/rw1;->a()I

    move-result v36

    invoke-virtual/range {v37 .. v37}, Landroidx/appcompat/view/menu/rw1;->D()J

    move-result-wide v37

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v38}, Landroidx/appcompat/view/menu/cb2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJ)V

    return-object v39

    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "No app data available; dropping"

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final X()Landroidx/appcompat/view/menu/we2;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->f:Landroidx/appcompat/view/menu/we2;

    invoke-static {v0}, Landroidx/appcompat/view/menu/o82;->j(Landroidx/appcompat/view/menu/m82;)Landroidx/appcompat/view/menu/m82;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/we2;

    return-object v0
.end method

.method public final Y(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "_fx"

    const-string v5, "_sno"

    invoke-static/range {p2 .. p2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v6}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    iget-object v8, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    invoke-static/range {p1 .. p2}, Landroidx/appcompat/view/menu/i92;->c0(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)Z

    move-result v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    iget-boolean v9, v3, Landroidx/appcompat/view/menu/cb2;->t:Z

    if-nez v9, :cond_1

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/o82;->g(Landroidx/appcompat/view/menu/cb2;)Landroidx/appcompat/view/menu/rw1;

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v9

    iget-object v10, v2, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-virtual {v9, v8, v10}, Landroidx/appcompat/view/menu/rv1;->O(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    const-string v15, "_err"

    const/4 v14, 0x0

    if-eqz v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    invoke-static {v8}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v5

    iget-object v6, v2, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/mt1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Dropping blocked event. appId"

    invoke-virtual {v3, v6, v4, v5}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroidx/appcompat/view/menu/rv1;->X(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroidx/appcompat/view/menu/rv1;->Z(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_4

    iget-object v4, v2, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    iget-object v9, v1, Landroidx/appcompat/view/menu/o82;->G:Landroidx/appcompat/view/menu/ba2;

    const/16 v11, 0xb

    const-string v12, "_ev"

    iget-object v13, v2, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    const/4 v2, 0x0

    move-object v10, v8

    move-object v4, v14

    move v14, v2

    invoke-static/range {v9 .. v14}, Landroidx/appcompat/view/menu/x92;->Y(Landroidx/appcompat/view/menu/ba2;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    move-object v4, v14

    :goto_2
    if-eqz v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroidx/appcompat/view/menu/lg1;->D0(Ljava/lang/String;)Landroidx/appcompat/view/menu/rw1;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/rw1;->e0()J

    move-result-wide v5

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/rw1;->H()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v3

    invoke-interface {v3}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    sget-object v3, Landroidx/appcompat/view/menu/si1;->B:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v5, v3

    if-lez v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    const-string v4, "Fetching config for blocked app"

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/o82;->V(Landroidx/appcompat/view/menu/rw1;)V

    :cond_5
    return-void

    :cond_6
    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/wt1;->b(Landroidx/appcompat/view/menu/oi1;)Landroidx/appcompat/view/menu/wt1;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroidx/appcompat/view/menu/qf1;->y(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v2, v10}, Landroidx/appcompat/view/menu/x92;->V(Landroidx/appcompat/view/menu/wt1;I)V

    invoke-static {}, Landroidx/appcompat/view/menu/yb2;->a()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v9

    sget-object v10, Landroidx/appcompat/view/menu/si1;->J0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v9, v10}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v9

    sget-object v10, Landroidx/appcompat/view/menu/si1;->S:Landroidx/appcompat/view/menu/us1;

    const/16 v11, 0xa

    const/16 v12, 0x23

    invoke-virtual {v9, v8, v10, v11, v12}, Landroidx/appcompat/view/menu/qf1;->q(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;II)I

    move-result v9

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    :goto_3
    new-instance v10, Ljava/util/TreeSet;

    iget-object v11, v2, Landroidx/appcompat/view/menu/wt1;->d:Landroid/os/Bundle;

    invoke-virtual {v11}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "items"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    move-result-object v12

    iget-object v13, v2, Landroidx/appcompat/view/menu/wt1;->d:Landroid/os/Bundle;

    invoke-virtual {v13, v11}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v11

    invoke-static {}, Landroidx/appcompat/view/menu/yb2;->a()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v13

    sget-object v14, Landroidx/appcompat/view/menu/si1;->J0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v13, v14}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x1

    goto :goto_5

    :cond_8
    const/4 v13, 0x0

    :goto_5
    invoke-virtual {v12, v11, v9, v13}, Landroidx/appcompat/view/menu/x92;->a0([Landroid/os/Parcelable;IZ)V

    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    :cond_a
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/wt1;->a()Landroidx/appcompat/view/menu/oi1;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroidx/appcompat/view/menu/pt1;->C(I)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v9

    iget-object v11, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroidx/appcompat/view/menu/mt1;->b(Landroidx/appcompat/view/menu/oi1;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "Logging event"

    invoke-virtual {v9, v12, v11}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    invoke-static {}, Landroidx/appcompat/view/menu/sb2;->a()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v9

    sget-object v11, Landroidx/appcompat/view/menu/si1;->G0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v9, v11}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/lg1;->Q0()V

    :try_start_0
    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/o82;->g(Landroidx/appcompat/view/menu/cb2;)Landroidx/appcompat/view/menu/rw1;

    const-string v9, "ecommerce_purchase"

    iget-object v11, v2, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v11, "refund"

    if-nez v9, :cond_e

    :try_start_1
    const-string v9, "purchase"

    iget-object v12, v2, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, v2, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_6

    :cond_d
    const/4 v9, 0x0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto/16 :goto_1e

    :cond_e
    :goto_6
    const/4 v9, 0x1

    :goto_7
    const-string v12, "_iap"

    iget-object v13, v2, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    if-eqz v9, :cond_f

    goto :goto_8

    :cond_f
    move-wide/from16 v24, v6

    move-object/from16 v26, v15

    const/4 v7, 0x0

    goto/16 :goto_e

    :cond_10
    :goto_8
    iget-object v12, v2, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    const-string v13, "currency"

    invoke-virtual {v12, v13}, Landroidx/appcompat/view/menu/ei1;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v13, "value"

    if-eqz v9, :cond_13

    :try_start_2
    iget-object v9, v2, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    invoke-virtual {v9, v13}, Landroidx/appcompat/view/menu/ei1;->i(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    const-wide v21, 0x412e848000000000L    # 1000000.0

    mul-double v19, v19, v21

    const-wide/16 v23, 0x0

    cmpl-double v9, v19, v23

    if-nez v9, :cond_11

    iget-object v9, v2, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    invoke-virtual {v9, v13}, Landroidx/appcompat/view/menu/ei1;->n(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    long-to-double v13, v13

    mul-double v19, v13, v21

    :cond_11
    const-wide/high16 v13, 0x43e0000000000000L    # 9.223372036854776E18

    cmpg-double v9, v19, v13

    if-gtz v9, :cond_12

    const-wide/high16 v13, -0x3c20000000000000L    # -9.223372036854776E18

    cmpl-double v9, v19, v13

    if-ltz v9, :cond_12

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    iget-object v9, v2, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    neg-long v13, v13

    goto :goto_9

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "Data lost. Currency value is too big. appId"

    invoke-static {v8}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->T0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    return-void

    :cond_13
    :try_start_3
    iget-object v9, v2, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    invoke-virtual {v9, v13}, Landroidx/appcompat/view/menu/ei1;->n(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    :cond_14
    :goto_9
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "[A-Z]{3}"

    invoke-virtual {v9, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "_ltv_"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v9

    invoke-virtual {v9, v8, v12}, Landroidx/appcompat/view/menu/lg1;->F0(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/z92;

    move-result-object v9

    if-eqz v9, :cond_15

    iget-object v9, v9, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    instance-of v11, v9, Ljava/lang/Long;

    if-nez v11, :cond_16

    :cond_15
    move-wide/from16 v24, v6

    move-object/from16 v26, v15

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto :goto_b

    :cond_16
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    new-instance v19, Landroidx/appcompat/view/menu/z92;

    iget-object v11, v2, Landroidx/appcompat/view/menu/oi1;->o:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v20

    add-long/2addr v9, v13

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v9, v19

    move-object v10, v8

    const/4 v13, 0x0

    move-wide/from16 v24, v6

    move v7, v13

    const/4 v6, 0x1

    move-wide/from16 v13, v20

    move-object/from16 v26, v15

    move-object/from16 v15, v22

    invoke-direct/range {v9 .. v15}, Landroidx/appcompat/view/menu/z92;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_a
    move-object/from16 v6, v19

    goto :goto_d

    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v11

    sget-object v15, Landroidx/appcompat/view/menu/si1;->G:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v11, v8, v15}, Landroidx/appcompat/view/menu/qf1;->u(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)I

    move-result v11

    sub-int/2addr v11, v6

    invoke-static {v8}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/m82;->u()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v9}, Landroidx/appcompat/view/menu/lg1;->B()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    const-string v10, "delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like \'_ltv_%\' order by set_timestamp desc limit ?,10);"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v8, v6, v7

    const/16 v17, 0x1

    aput-object v8, v6, v17

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x2

    aput-object v11, v6, v16

    invoke-virtual {v15, v10, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v6, v0

    :try_start_5
    invoke-virtual {v9}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v9

    const-string v10, "Error pruning currencies. appId"

    invoke-static {v8}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v6}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_c
    new-instance v19, Landroidx/appcompat/view/menu/z92;

    iget-object v11, v2, Landroidx/appcompat/view/menu/oi1;->o:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v6

    invoke-interface {v6}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v15

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v9, v19

    move-object v10, v8

    move-wide v13, v15

    move-object v15, v6

    invoke-direct/range {v9 .. v15}, Landroidx/appcompat/view/menu/z92;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_a

    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroidx/appcompat/view/menu/lg1;->e0(Landroidx/appcompat/view/menu/z92;)Z

    move-result v9

    if-nez v9, :cond_17

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v9

    const-string v10, "Too many unique user properties are set. Ignoring user property. appId"

    invoke-static {v8}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    iget-object v12, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v12}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v12

    iget-object v13, v6, Landroidx/appcompat/view/menu/z92;->c:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroidx/appcompat/view/menu/mt1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v6, v6, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11, v12, v6}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    iget-object v9, v1, Landroidx/appcompat/view/menu/o82;->G:Landroidx/appcompat/view/menu/ba2;

    const/16 v11, 0x9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v8

    invoke-static/range {v9 .. v14}, Landroidx/appcompat/view/menu/x92;->Y(Landroidx/appcompat/view/menu/ba2;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    :cond_17
    :goto_e
    iget-object v6, v2, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-static {v6}, Landroidx/appcompat/view/menu/x92;->J0(Ljava/lang/String;)Z

    move-result v6

    iget-object v9, v2, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    move-object/from16 v10, v26

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    iget-object v9, v2, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    invoke-static {v9}, Landroidx/appcompat/view/menu/x92;->A(Landroidx/appcompat/view/menu/ei1;)J

    move-result-wide v9

    const-wide/16 v13, 0x1

    add-long v15, v9, v13

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->u0()J

    move-result-wide v10

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v8

    move-object/from16 v21, v8

    move-wide v7, v13

    move-wide v13, v15

    move/from16 v15, v17

    move/from16 v16, v6

    move/from16 v17, v18

    move/from16 v18, v20

    invoke-virtual/range {v9 .. v19}, Landroidx/appcompat/view/menu/lg1;->I(JLjava/lang/String;JZZZZZ)Landroidx/appcompat/view/menu/ng1;

    move-result-object v9

    iget-wide v10, v9, Landroidx/appcompat/view/menu/ng1;->b:J

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    sget-object v12, Landroidx/appcompat/view/menu/si1;->m:Landroidx/appcompat/view/menu/us1;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    sub-long/2addr v10, v12

    const-wide/16 v14, 0x0

    cmp-long v12, v10, v14

    const-wide/16 v16, 0x3e8

    if-lez v12, :cond_19

    rem-long v10, v10, v16

    cmp-long v2, v10, v7

    if-nez v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "Data loss. Too many events logged. appId, count"

    invoke-static/range {v21 .. v21}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v9, Landroidx/appcompat/view/menu/ng1;->b:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->T0()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    return-void

    :cond_19
    if-eqz v6, :cond_1b

    :try_start_6
    iget-wide v10, v9, Landroidx/appcompat/view/menu/ng1;->a:J

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    sget-object v12, Landroidx/appcompat/view/menu/si1;->o:Landroidx/appcompat/view/menu/us1;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    sub-long/2addr v10, v12

    cmp-long v12, v10, v14

    if-lez v12, :cond_1b

    rem-long v10, v10, v16

    cmp-long v3, v10, v7

    if-nez v3, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    const-string v4, "Data loss. Too many public events logged. appId, count"

    invoke-static/range {v21 .. v21}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-wide v6, v9, Landroidx/appcompat/view/menu/ng1;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    iget-object v9, v1, Landroidx/appcompat/view/menu/o82;->G:Landroidx/appcompat/view/menu/ba2;

    const/16 v11, 0x10

    const-string v12, "_ev"

    iget-object v13, v2, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v10, v21

    invoke-static/range {v9 .. v14}, Landroidx/appcompat/view/menu/x92;->Y(Landroidx/appcompat/view/menu/ba2;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->T0()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    return-void

    :cond_1b
    if-eqz v20, :cond_1d

    :try_start_7
    iget-wide v10, v9, Landroidx/appcompat/view/menu/ng1;->d:J

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v12

    iget-object v13, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    sget-object v7, Landroidx/appcompat/view/menu/si1;->n:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v12, v13, v7}, Landroidx/appcompat/view/menu/qf1;->u(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)I

    move-result v7

    const v8, 0xf4240

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-long v7, v7

    sub-long/2addr v10, v7

    cmp-long v7, v10, v14

    if-lez v7, :cond_1d

    const-wide/16 v7, 0x1

    cmp-long v2, v10, v7

    if-nez v2, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "Too many error events logged. appId, count"

    invoke-static/range {v21 .. v21}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    iget-wide v5, v9, Landroidx/appcompat/view/menu/ng1;->d:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->T0()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    return-void

    :cond_1d
    :try_start_8
    iget-object v7, v2, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/ei1;->k()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    move-result-object v8

    const-string v9, "_o"

    iget-object v10, v2, Landroidx/appcompat/view/menu/oi1;->o:Ljava/lang/String;

    invoke-virtual {v8, v7, v9, v10}, Landroidx/appcompat/view/menu/x92;->N(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    move-result-object v8

    move-object/from16 v13, v21

    invoke-virtual {v8, v13}, Landroidx/appcompat/view/menu/x92;->F0(Ljava/lang/String;)Z

    move-result v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const-string v12, "_r"

    if-eqz v8, :cond_1e

    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    move-result-object v8

    const-string v9, "_dbg"

    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v8, v7, v9, v14}, Landroidx/appcompat/view/menu/x92;->N(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    move-result-object v8

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v7, v12, v9}, Landroidx/appcompat/view/menu/x92;->N(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1e
    const-string v8, "_s"

    iget-object v9, v2, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v8

    iget-object v9, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v8, v9, v5}, Landroidx/appcompat/view/menu/lg1;->F0(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/z92;

    move-result-object v8

    if-eqz v8, :cond_1f

    iget-object v9, v8, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/Long;

    if-eqz v9, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    move-result-object v9

    iget-object v8, v8, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    invoke-virtual {v9, v7, v5, v8}, Landroidx/appcompat/view/menu/x92;->N(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroidx/appcompat/view/menu/lg1;->F(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v14, 0x0

    cmp-long v5, v8, v14

    if-lez v5, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v5

    const-string v10, "Data lost. Too many events stored on disk, deleted. appId"

    invoke-static {v13}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v10, v11, v8}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_20
    new-instance v5, Landroidx/appcompat/view/menu/hh1;

    iget-object v10, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    iget-object v11, v2, Landroidx/appcompat/view/menu/oi1;->o:Ljava/lang/String;

    iget-object v8, v2, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    iget-wide v14, v2, Landroidx/appcompat/view/menu/oi1;->p:J

    const-wide/16 v18, 0x0

    move-object v9, v5

    move-object v2, v12

    move-object v12, v13

    move-object/from16 v27, v2

    move-object v2, v13

    move-object v13, v8

    move-wide/from16 v16, v18

    move-object/from16 v18, v7

    invoke-direct/range {v9 .. v18}, Landroidx/appcompat/view/menu/hh1;-><init>(Landroidx/appcompat/view/menu/cx1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v7

    iget-object v8, v5, Landroidx/appcompat/view/menu/hh1;->b:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroidx/appcompat/view/menu/lg1;->C0(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/gi1;

    move-result-object v7

    if-nez v7, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroidx/appcompat/view/menu/lg1;->v0(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroidx/appcompat/view/menu/qf1;->p(Ljava/lang/String;)I

    move-result v9

    int-to-long v9, v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_21

    if-eqz v6, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    const-string v4, "Too many event names used, ignoring event. appId, name, supported count"

    invoke-static {v2}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    iget-object v7, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v7

    iget-object v5, v5, Landroidx/appcompat/view/menu/hh1;->b:Ljava/lang/String;

    invoke-virtual {v7, v5}, Landroidx/appcompat/view/menu/mt1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroidx/appcompat/view/menu/qf1;->p(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v4, v6, v5, v7}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    iget-object v9, v1, Landroidx/appcompat/view/menu/o82;->G:Landroidx/appcompat/view/menu/ba2;

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v2

    invoke-static/range {v9 .. v14}, Landroidx/appcompat/view/menu/x92;->Y(Landroidx/appcompat/view/menu/ba2;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    return-void

    :cond_21
    :try_start_a
    new-instance v6, Landroidx/appcompat/view/menu/gi1;

    iget-object v11, v5, Landroidx/appcompat/view/menu/hh1;->b:Ljava/lang/String;

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    iget-wide v7, v5, Landroidx/appcompat/view/menu/hh1;->d:J

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v9, v6

    move-object v10, v2

    move-wide/from16 v16, v7

    invoke-direct/range {v9 .. v23}, Landroidx/appcompat/view/menu/gi1;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    goto :goto_f

    :cond_22
    iget-object v2, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    iget-wide v8, v7, Landroidx/appcompat/view/menu/gi1;->f:J

    invoke-virtual {v5, v2, v8, v9}, Landroidx/appcompat/view/menu/hh1;->a(Landroidx/appcompat/view/menu/cx1;J)Landroidx/appcompat/view/menu/hh1;

    move-result-object v5

    iget-wide v8, v5, Landroidx/appcompat/view/menu/hh1;->d:J

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/view/menu/gi1;->a(J)Landroidx/appcompat/view/menu/gi1;

    move-result-object v6

    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroidx/appcompat/view/menu/lg1;->U(Landroidx/appcompat/view/menu/gi1;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    invoke-static {v5}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v5, Landroidx/appcompat/view/menu/hh1;->a:Ljava/lang/String;

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, v5, Landroidx/appcompat/view/menu/hh1;->a:Ljava/lang/String;

    iget-object v6, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->a(Z)V

    invoke-static {}, Landroidx/appcompat/view/menu/ps1;->A3()Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v2

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroidx/appcompat/view/menu/ps1$a;->h0(I)Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v2

    const-string v7, "android"

    invoke-virtual {v2, v7}, Landroidx/appcompat/view/menu/ps1$a;->J0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v2

    iget-object v7, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_23

    iget-object v7, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroidx/appcompat/view/menu/ps1$a;->J(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_23
    iget-object v7, v3, Landroidx/appcompat/view/menu/cb2;->p:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_24

    iget-object v7, v3, Landroidx/appcompat/view/menu/cb2;->p:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroidx/appcompat/view/menu/ps1$a;->V(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_24
    iget-object v7, v3, Landroidx/appcompat/view/menu/cb2;->o:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_25

    iget-object v7, v3, Landroidx/appcompat/view/menu/cb2;->o:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroidx/appcompat/view/menu/ps1$a;->b0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_25
    invoke-static {}, Landroidx/appcompat/view/menu/ed2;->a()Z

    move-result v7

    if-eqz v7, :cond_27

    iget-object v7, v3, Landroidx/appcompat/view/menu/cb2;->J:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_27

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v7

    sget-object v8, Landroidx/appcompat/view/menu/si1;->w0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v7

    if-nez v7, :cond_26

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v7

    iget-object v8, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    sget-object v9, Landroidx/appcompat/view/menu/si1;->y0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/view/menu/qf1;->B(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z

    move-result v7

    if-eqz v7, :cond_27

    :cond_26
    iget-object v7, v3, Landroidx/appcompat/view/menu/cb2;->J:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroidx/appcompat/view/menu/ps1$a;->M0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_27
    iget-wide v7, v3, Landroidx/appcompat/view/menu/cb2;->v:J

    const-wide/32 v9, -0x80000000

    cmp-long v9, v7, v9

    if-eqz v9, :cond_28

    long-to-int v7, v7

    invoke-virtual {v2, v7}, Landroidx/appcompat/view/menu/ps1$a;->Y(I)Landroidx/appcompat/view/menu/ps1$a;

    :cond_28
    iget-wide v7, v3, Landroidx/appcompat/view/menu/cb2;->q:J

    invoke-virtual {v2, v7, v8}, Landroidx/appcompat/view/menu/ps1$a;->e0(J)Landroidx/appcompat/view/menu/ps1$a;

    iget-object v7, v3, Landroidx/appcompat/view/menu/cb2;->n:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_29

    iget-object v7, v3, Landroidx/appcompat/view/menu/cb2;->n:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroidx/appcompat/view/menu/ps1$a;->D0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_29
    iget-object v7, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v7}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroidx/appcompat/view/menu/o82;->Q(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v7

    iget-object v8, v3, Landroidx/appcompat/view/menu/cb2;->H:Ljava/lang/String;

    invoke-static {v8}, Landroidx/appcompat/view/menu/lz1;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/lz1;->d(Landroidx/appcompat/view/menu/lz1;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/lz1;->v()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroidx/appcompat/view/menu/ps1$a;->j0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ps1$a;->Q0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2a

    iget-object v8, v3, Landroidx/appcompat/view/menu/cb2;->C:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2a

    iget-object v8, v3, Landroidx/appcompat/view/menu/cb2;->C:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroidx/appcompat/view/menu/ps1$a;->D(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_2a
    invoke-static {}, Landroidx/appcompat/view/menu/sc2;->a()Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v8

    iget-object v9, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    sget-object v10, Landroidx/appcompat/view/menu/si1;->L0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/view/menu/qf1;->B(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z

    move-result v8

    if-eqz v8, :cond_34

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    iget-object v8, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v8}, Landroidx/appcompat/view/menu/x92;->D0(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_34

    iget v8, v3, Landroidx/appcompat/view/menu/cb2;->O:I

    invoke-virtual {v2, v8}, Landroidx/appcompat/view/menu/ps1$a;->S(I)Landroidx/appcompat/view/menu/ps1$a;

    iget-wide v8, v3, Landroidx/appcompat/view/menu/cb2;->P:J

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/lz1;->x()Z

    move-result v7

    const-wide/16 v10, 0x20

    const-wide/16 v12, 0x0

    if-nez v7, :cond_2b

    cmp-long v7, v8, v12

    if-eqz v7, :cond_2b

    const-wide/16 v14, -0x2

    and-long v7, v8, v14

    or-long v8, v7, v10

    :cond_2b
    const-wide/16 v14, 0x1

    cmp-long v7, v8, v14

    if-nez v7, :cond_2c

    move v7, v6

    goto :goto_10

    :cond_2c
    const/4 v7, 0x0

    :goto_10
    invoke-virtual {v2, v7}, Landroidx/appcompat/view/menu/ps1$a;->E(Z)Landroidx/appcompat/view/menu/ps1$a;

    cmp-long v7, v8, v12

    if-eqz v7, :cond_35

    invoke-static {}, Landroidx/appcompat/view/menu/hs1;->G()Landroidx/appcompat/view/menu/hs1$a;

    move-result-object v7

    and-long v16, v8, v14

    cmp-long v14, v16, v12

    if-eqz v14, :cond_2d

    move v14, v6

    goto :goto_11

    :cond_2d
    const/4 v14, 0x0

    :goto_11
    invoke-virtual {v7, v14}, Landroidx/appcompat/view/menu/hs1$a;->t(Z)Landroidx/appcompat/view/menu/hs1$a;

    const-wide/16 v14, 0x2

    and-long/2addr v14, v8

    cmp-long v14, v14, v12

    if-eqz v14, :cond_2e

    move v14, v6

    goto :goto_12

    :cond_2e
    const/4 v14, 0x0

    :goto_12
    invoke-virtual {v7, v14}, Landroidx/appcompat/view/menu/hs1$a;->v(Z)Landroidx/appcompat/view/menu/hs1$a;

    const-wide/16 v14, 0x4

    and-long/2addr v14, v8

    cmp-long v14, v14, v12

    if-eqz v14, :cond_2f

    move v14, v6

    goto :goto_13

    :cond_2f
    const/4 v14, 0x0

    :goto_13
    invoke-virtual {v7, v14}, Landroidx/appcompat/view/menu/hs1$a;->w(Z)Landroidx/appcompat/view/menu/hs1$a;

    const-wide/16 v14, 0x8

    and-long/2addr v14, v8

    cmp-long v14, v14, v12

    if-eqz v14, :cond_30

    move v14, v6

    goto :goto_14

    :cond_30
    const/4 v14, 0x0

    :goto_14
    invoke-virtual {v7, v14}, Landroidx/appcompat/view/menu/hs1$a;->x(Z)Landroidx/appcompat/view/menu/hs1$a;

    const-wide/16 v14, 0x10

    and-long/2addr v14, v8

    cmp-long v14, v14, v12

    if-eqz v14, :cond_31

    move v14, v6

    goto :goto_15

    :cond_31
    const/4 v14, 0x0

    :goto_15
    invoke-virtual {v7, v14}, Landroidx/appcompat/view/menu/hs1$a;->s(Z)Landroidx/appcompat/view/menu/hs1$a;

    and-long/2addr v10, v8

    cmp-long v10, v10, v12

    if-eqz v10, :cond_32

    move v10, v6

    goto :goto_16

    :cond_32
    const/4 v10, 0x0

    :goto_16
    invoke-virtual {v7, v10}, Landroidx/appcompat/view/menu/hs1$a;->r(Z)Landroidx/appcompat/view/menu/hs1$a;

    const-wide/16 v10, 0x40

    and-long/2addr v8, v10

    cmp-long v8, v8, v12

    if-eqz v8, :cond_33

    move v8, v6

    goto :goto_17

    :cond_33
    const/4 v8, 0x0

    :goto_17
    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/hs1$a;->u(Z)Landroidx/appcompat/view/menu/hs1$a;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/q02;

    check-cast v7, Landroidx/appcompat/view/menu/hs1;

    invoke-virtual {v2, v7}, Landroidx/appcompat/view/menu/ps1$a;->x(Landroidx/appcompat/view/menu/hs1;)Landroidx/appcompat/view/menu/ps1$a;

    goto :goto_18

    :cond_34
    const-wide/16 v12, 0x0

    :cond_35
    :goto_18
    iget-wide v7, v3, Landroidx/appcompat/view/menu/cb2;->r:J

    cmp-long v9, v7, v12

    if-eqz v9, :cond_36

    invoke-virtual {v2, v7, v8}, Landroidx/appcompat/view/menu/ps1$a;->N(J)Landroidx/appcompat/view/menu/ps1$a;

    :cond_36
    iget-wide v7, v3, Landroidx/appcompat/view/menu/cb2;->E:J

    invoke-virtual {v2, v7, v8}, Landroidx/appcompat/view/menu/ps1$a;->T(J)Landroidx/appcompat/view/menu/ps1$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/i92;->j0()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_37

    invoke-virtual {v2, v7}, Landroidx/appcompat/view/menu/ps1$a;->O(Ljava/lang/Iterable;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_37
    iget-object v7, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v7}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroidx/appcompat/view/menu/o82;->Q(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v7

    iget-object v8, v3, Landroidx/appcompat/view/menu/cb2;->H:Ljava/lang/String;

    invoke-static {v8}, Landroidx/appcompat/view/menu/lz1;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/lz1;->d(Landroidx/appcompat/view/menu/lz1;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/lz1;->x()Z

    move-result v8

    if-eqz v8, :cond_39

    iget-boolean v8, v3, Landroidx/appcompat/view/menu/cb2;->A:Z

    if-eqz v8, :cond_39

    iget-object v8, v1, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    iget-object v9, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v8, v9, v7}, Landroidx/appcompat/view/menu/p62;->z(Ljava/lang/String;Landroidx/appcompat/view/menu/lz1;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_39

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_39

    iget-boolean v9, v3, Landroidx/appcompat/view/menu/cb2;->A:Z

    if-eqz v9, :cond_39

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroidx/appcompat/view/menu/ps1$a;->L0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v9, :cond_38

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v2, v9}, Landroidx/appcompat/view/menu/ps1$a;->Q(Z)Landroidx/appcompat/view/menu/ps1$a;

    :cond_38
    invoke-static {}, Landroidx/appcompat/view/menu/ia2;->a()Z

    move-result v9

    if-eqz v9, :cond_39

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v9

    sget-object v10, Landroidx/appcompat/view/menu/si1;->Y0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v9, v10}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v9

    if-eqz v9, :cond_39

    iget-object v9, v5, Landroidx/appcompat/view/menu/hh1;->b:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_39

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    const-string v9, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_39

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v8

    iget-object v9, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroidx/appcompat/view/menu/lg1;->D0(Ljava/lang/String;)Landroidx/appcompat/view/menu/rw1;

    move-result-object v8

    if-eqz v8, :cond_39

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/rw1;->u()Z

    move-result v8

    if-eqz v8, :cond_39

    iget-object v8, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroidx/appcompat/view/menu/o82;->F(Ljava/lang/String;Z)V

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v14, v27

    const-wide/16 v10, 0x1

    invoke-virtual {v8, v14, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v10, v1, Landroidx/appcompat/view/menu/o82;->G:Landroidx/appcompat/view/menu/ba2;

    iget-object v11, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-interface {v10, v11, v4, v8}, Landroidx/appcompat/view/menu/ba2;->l(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_19

    :cond_39
    move-object/from16 v14, v27

    const/4 v9, 0x0

    :goto_19
    iget-object v4, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/cx1;->A()Landroidx/appcompat/view/menu/ci1;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/dz1;->o()V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/ps1$a;->r0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v4

    iget-object v8, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/cx1;->A()Landroidx/appcompat/view/menu/ci1;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/dz1;->o()V

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroidx/appcompat/view/menu/ps1$a;->H0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v4

    iget-object v8, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/cx1;->A()Landroidx/appcompat/view/menu/ci1;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/ci1;->v()J

    move-result-wide v10

    long-to-int v8, v10

    invoke-virtual {v4, v8}, Landroidx/appcompat/view/menu/ps1$a;->p0(I)Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v4

    iget-object v8, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/cx1;->A()Landroidx/appcompat/view/menu/ci1;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/ci1;->w()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroidx/appcompat/view/menu/ps1$a;->O0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    iget-wide v10, v3, Landroidx/appcompat/view/menu/cb2;->L:J

    invoke-virtual {v2, v10, v11}, Landroidx/appcompat/view/menu/ps1$a;->t0(J)Landroidx/appcompat/view/menu/ps1$a;

    iget-object v4, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/cx1;->p()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ps1$a;->N0()Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3a

    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/ps1$a;->u0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_3a
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v4

    iget-object v8, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroidx/appcompat/view/menu/lg1;->D0(Ljava/lang/String;)Landroidx/appcompat/view/menu/rw1;

    move-result-object v4

    if-nez v4, :cond_3c

    new-instance v4, Landroidx/appcompat/view/menu/rw1;

    iget-object v8, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    iget-object v10, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-direct {v4, v8, v10}, Landroidx/appcompat/view/menu/rw1;-><init>(Landroidx/appcompat/view/menu/cx1;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroidx/appcompat/view/menu/o82;->n(Landroidx/appcompat/view/menu/lz1;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroidx/appcompat/view/menu/rw1;->x(Ljava/lang/String;)V

    iget-object v8, v3, Landroidx/appcompat/view/menu/cb2;->w:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroidx/appcompat/view/menu/rw1;->J(Ljava/lang/String;)V

    iget-object v8, v3, Landroidx/appcompat/view/menu/cb2;->n:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroidx/appcompat/view/menu/rw1;->M(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/lz1;->x()Z

    move-result v8

    if-eqz v8, :cond_3b

    iget-object v8, v1, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    iget-object v10, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    iget-boolean v11, v3, Landroidx/appcompat/view/menu/cb2;->A:Z

    invoke-virtual {v8, v10, v11}, Landroidx/appcompat/view/menu/p62;->A(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroidx/appcompat/view/menu/rw1;->S(Ljava/lang/String;)V

    :cond_3b
    invoke-virtual {v4, v12, v13}, Landroidx/appcompat/view/menu/rw1;->h0(J)V

    invoke-virtual {v4, v12, v13}, Landroidx/appcompat/view/menu/rw1;->j0(J)V

    invoke-virtual {v4, v12, v13}, Landroidx/appcompat/view/menu/rw1;->f0(J)V

    iget-object v8, v3, Landroidx/appcompat/view/menu/cb2;->o:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroidx/appcompat/view/menu/rw1;->F(Ljava/lang/String;)V

    iget-wide v10, v3, Landroidx/appcompat/view/menu/cb2;->v:J

    invoke-virtual {v4, v10, v11}, Landroidx/appcompat/view/menu/rw1;->c(J)V

    iget-object v8, v3, Landroidx/appcompat/view/menu/cb2;->p:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroidx/appcompat/view/menu/rw1;->B(Ljava/lang/String;)V

    iget-wide v10, v3, Landroidx/appcompat/view/menu/cb2;->q:J

    invoke-virtual {v4, v10, v11}, Landroidx/appcompat/view/menu/rw1;->d0(J)V

    iget-wide v10, v3, Landroidx/appcompat/view/menu/cb2;->r:J

    invoke-virtual {v4, v10, v11}, Landroidx/appcompat/view/menu/rw1;->X(J)V

    iget-boolean v8, v3, Landroidx/appcompat/view/menu/cb2;->t:Z

    invoke-virtual {v4, v8}, Landroidx/appcompat/view/menu/rw1;->y(Z)V

    iget-wide v10, v3, Landroidx/appcompat/view/menu/cb2;->E:J

    invoke-virtual {v4, v10, v11}, Landroidx/appcompat/view/menu/rw1;->Z(J)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroidx/appcompat/view/menu/lg1;->V(Landroidx/appcompat/view/menu/rw1;)V

    :cond_3c
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/lz1;->y()Z

    move-result v7

    if-eqz v7, :cond_3d

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/rw1;->u0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3d

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/rw1;->u0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroidx/appcompat/view/menu/ps1$a;->P(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_3d
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/rw1;->i()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3e

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/rw1;->i()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroidx/appcompat/view/menu/ps1$a;->B0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v7

    iget-object v8, v3, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroidx/appcompat/view/menu/lg1;->M0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    move v8, v9

    :goto_1a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_40

    invoke-static {}, Landroidx/appcompat/view/menu/ts1;->X()Landroidx/appcompat/view/menu/ts1$a;

    move-result-object v10

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/view/menu/z92;

    iget-object v11, v11, Landroidx/appcompat/view/menu/z92;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroidx/appcompat/view/menu/ts1$a;->u(Ljava/lang/String;)Landroidx/appcompat/view/menu/ts1$a;

    move-result-object v10

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/view/menu/z92;

    iget-wide v12, v11, Landroidx/appcompat/view/menu/z92;->d:J

    invoke-virtual {v10, v12, v13}, Landroidx/appcompat/view/menu/ts1$a;->w(J)Landroidx/appcompat/view/menu/ts1$a;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    move-result-object v11

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/appcompat/view/menu/z92;

    iget-object v12, v12, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    invoke-virtual {v11, v10, v12}, Landroidx/appcompat/view/menu/i92;->U(Landroidx/appcompat/view/menu/ts1$a;Ljava/lang/Object;)V

    invoke-virtual {v2, v10}, Landroidx/appcompat/view/menu/ps1$a;->A(Landroidx/appcompat/view/menu/ts1$a;)Landroidx/appcompat/view/menu/ps1$a;

    const-string v10, "_sid"

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/view/menu/z92;

    iget-object v11, v11, Landroidx/appcompat/view/menu/z92;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3f

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/rw1;->o0()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3f

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    move-result-object v10

    iget-object v11, v3, Landroidx/appcompat/view/menu/cb2;->J:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroidx/appcompat/view/menu/i92;->z(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/rw1;->o0()J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-eqz v10, :cond_3f

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ps1$a;->I0()Landroidx/appcompat/view/menu/ps1$a;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_3f
    add-int/lit8 v8, v8, 0x1

    const-wide/16 v12, 0x0

    goto :goto_1a

    :cond_40
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v3

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/q02;

    check-cast v4, Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/lg1;->E(Landroidx/appcompat/view/menu/ps1;)J

    move-result-wide v2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v4

    iget-object v7, v5, Landroidx/appcompat/view/menu/hh1;->f:Landroidx/appcompat/view/menu/ei1;

    if-eqz v7, :cond_43

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/ei1;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_41
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_42

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    :goto_1b
    move v13, v6

    goto :goto_1c

    :cond_42
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v7

    iget-object v8, v5, Landroidx/appcompat/view/menu/hh1;->a:Ljava/lang/String;

    iget-object v10, v5, Landroidx/appcompat/view/menu/hh1;->b:Ljava/lang/String;

    invoke-virtual {v7, v8, v10}, Landroidx/appcompat/view/menu/rv1;->M(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->u0()J

    move-result-wide v11

    iget-object v13, v5, Landroidx/appcompat/view/menu/hh1;->a:Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v10 .. v18}, Landroidx/appcompat/view/menu/lg1;->J(JLjava/lang/String;ZZZZZ)Landroidx/appcompat/view/menu/ng1;

    move-result-object v8

    if-eqz v7, :cond_43

    iget-wide v7, v8, Landroidx/appcompat/view/menu/ng1;->e:J

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v10

    iget-object v11, v5, Landroidx/appcompat/view/menu/hh1;->a:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroidx/appcompat/view/menu/qf1;->A(Ljava/lang/String;)I

    move-result v10

    int-to-long v10, v10

    cmp-long v7, v7, v10

    if-gez v7, :cond_43

    goto :goto_1b

    :cond_43
    move v13, v9

    :goto_1c
    invoke-virtual {v4, v5, v2, v3, v13}, Landroidx/appcompat/view/menu/lg1;->c0(Landroidx/appcompat/view/menu/hh1;JZ)Z

    move-result v2

    if-eqz v2, :cond_44

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroidx/appcompat/view/menu/o82;->o:J

    goto :goto_1d

    :catch_1
    move-exception v0

    move-object v3, v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v4

    const-string v5, "Data loss. Failed to insert raw event metadata. appId"

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ps1$a;->N0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v5, v2, v3}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_44
    :goto_1d
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->T0()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->N()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v3, v3, v24

    const-wide/32 v5, 0x7a120

    add-long/2addr v3, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Background event processing time, ms"

    invoke-virtual {v2, v4, v3}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :goto_1e
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/lg1;->R0()V

    throw v2
.end method

.method public final Z(Landroidx/appcompat/view/menu/cb2;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "_sysu"

    const-string v4, "_sys"

    const-string v5, "_pfo"

    const-string v6, "com.android.vending"

    const-string v0, "_npa"

    const-string v7, "_uwa"

    const-string v8, "app_id=?"

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v9}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/o82;->d0(Landroidx/appcompat/view/menu/cb2;)Z

    move-result v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v9

    iget-object v10, v2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroidx/appcompat/view/menu/lg1;->D0(Ljava/lang/String;)Landroidx/appcompat/view/menu/rw1;

    move-result-object v9

    const-wide/16 v10, 0x0

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/rw1;->j()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    iget-object v12, v2, Landroidx/appcompat/view/menu/cb2;->n:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-virtual {v9, v10, v11}, Landroidx/appcompat/view/menu/rw1;->A(J)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroidx/appcompat/view/menu/lg1;->V(Landroidx/appcompat/view/menu/rw1;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v9

    iget-object v12, v2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v9, v12}, Landroidx/appcompat/view/menu/rv1;->U(Ljava/lang/String;)V

    :cond_1
    iget-boolean v9, v2, Landroidx/appcompat/view/menu/cb2;->t:Z

    if-nez v9, :cond_2

    invoke-virtual/range {p0 .. p1}, Landroidx/appcompat/view/menu/o82;->g(Landroidx/appcompat/view/menu/cb2;)Landroidx/appcompat/view/menu/rw1;

    return-void

    :cond_2
    iget-wide v12, v2, Landroidx/appcompat/view/menu/cb2;->y:J

    cmp-long v9, v12, v10

    if-nez v9, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v9

    invoke-interface {v9}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v12

    :cond_3
    iget-object v9, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/cx1;->A()Landroidx/appcompat/view/menu/ci1;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ci1;->x()V

    iget v9, v2, Landroidx/appcompat/view/menu/cb2;->z:I

    const/4 v14, 0x1

    if-eqz v9, :cond_4

    if-eq v9, v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v14

    iget-object v15, v2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v15}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "Incorrect app type, assuming installed app. appId, appType"

    invoke-virtual {v14, v10, v15, v9}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v9, 0x0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/lg1;->Q0()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v10

    iget-object v11, v2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v10, v11, v0}, Landroidx/appcompat/view/menu/lg1;->F0(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/z92;

    move-result-object v10

    if-eqz v10, :cond_6

    const-string v11, "auto"

    iget-object v14, v10, Landroidx/appcompat/view/menu/z92;->b:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_0

    :cond_5
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_15

    :cond_6
    :goto_0
    iget-object v11, v2, Landroidx/appcompat/view/menu/cb2;->D:Ljava/lang/Boolean;

    if-eqz v11, :cond_9

    new-instance v0, Landroidx/appcompat/view/menu/v92;

    const-string v15, "_npa"

    iget-object v11, v2, Landroidx/appcompat/view/menu/cb2;->D:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_7

    const-wide/16 v20, 0x1

    goto :goto_1

    :cond_7
    const-wide/16 v20, 0x0

    :goto_1
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v20, "auto"

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const/4 v3, 0x1

    move-object v14, v0

    const/4 v4, 0x0

    move-wide/from16 v16, v12

    move-object/from16 v18, v11

    move-object/from16 v19, v20

    invoke-direct/range {v14 .. v19}, Landroidx/appcompat/view/menu/v92;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    if-eqz v10, :cond_8

    iget-object v10, v10, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    iget-object v11, v0, Landroidx/appcompat/view/menu/v92;->p:Ljava/lang/Long;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    :cond_8
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/view/menu/o82;->x(Landroidx/appcompat/view/menu/v92;Landroidx/appcompat/view/menu/cb2;)V

    goto :goto_2

    :cond_9
    move-object/from16 v21, v3

    move-object/from16 v22, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v10, :cond_a

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/view/menu/o82;->E(Ljava/lang/String;Landroidx/appcompat/view/menu/cb2;)V

    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    iget-object v10, v2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v10}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroidx/appcompat/view/menu/lg1;->D0(Ljava/lang/String;)Landroidx/appcompat/view/menu/rw1;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    iget-object v11, v2, Landroidx/appcompat/view/menu/cb2;->n:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/rw1;->j()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v2, Landroidx/appcompat/view/menu/cb2;->C:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/rw1;->r0()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v14, v15, v10}, Landroidx/appcompat/view/menu/x92;->l0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v10

    const-string v11, "New GMP App Id passed in. Removing cached database data. appId"

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/rw1;->t0()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v10, v11, v14}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v10

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/rw1;->t0()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/m82;->u()V

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-static {v11}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/lg1;->B()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v14

    const-string v15, "events"

    invoke-virtual {v0, v15, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    const-string v4, "user_attributes"

    invoke-virtual {v0, v4, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v15, v4

    const-string v4, "conditional_properties"

    invoke-virtual {v0, v4, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v15, v4

    const-string v4, "apps"

    invoke-virtual {v0, v4, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v15, v4

    const-string v4, "raw_events"

    invoke-virtual {v0, v4, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v15, v4

    const-string v4, "raw_events_metadata"

    invoke-virtual {v0, v4, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v15, v4

    const-string v4, "event_filters"

    invoke-virtual {v0, v4, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v15, v4

    const-string v4, "property_filters"

    invoke-virtual {v0, v4, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v15, v4

    const-string v4, "audience_filter_values"

    invoke-virtual {v0, v4, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v15, v4

    const-string v4, "consent_settings"

    invoke-virtual {v0, v4, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v15, v4

    const-string v4, "default_event_params"

    invoke-virtual {v0, v4, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    add-int/2addr v15, v4

    const-string v4, "trigger_uris"

    invoke-virtual {v0, v4, v8, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v15, v0

    if-lez v15, :cond_b

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v4, "Deleted application data. app, records"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v4, v11, v8}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v10}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v4

    const-string v8, "Error deleting application data. appId, error"

    invoke-static {v11}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v4, v8, v10, v0}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_b
    :goto_3
    const/4 v0, 0x0

    :cond_c
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/rw1;->z()J

    move-result-wide v10

    const-wide/32 v14, -0x80000000

    cmp-long v4, v10, v14

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/rw1;->z()J

    move-result-wide v10

    iget-wide v3, v2, Landroidx/appcompat/view/menu/cb2;->v:J

    cmp-long v3, v10, v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_4

    :cond_d
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/rw1;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/rw1;->z()J

    move-result-wide v10

    cmp-long v0, v10, v14

    if-nez v0, :cond_e

    if-eqz v4, :cond_e

    iget-object v0, v2, Landroidx/appcompat/view/menu/cb2;->o:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v15, 0x1

    goto :goto_5

    :cond_e
    const/4 v15, 0x0

    :goto_5
    or-int v0, v3, v15

    if-eqz v0, :cond_f

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_pv"

    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroidx/appcompat/view/menu/oi1;

    const-string v15, "_au"

    new-instance v4, Landroidx/appcompat/view/menu/ei1;

    invoke-direct {v4, v0}, Landroidx/appcompat/view/menu/ei1;-><init>(Landroid/os/Bundle;)V

    const-string v17, "auto"

    move-object v14, v3

    move-object/from16 v16, v4

    move-wide/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Landroidx/appcompat/view/menu/oi1;-><init>(Ljava/lang/String;Landroidx/appcompat/view/menu/ei1;Ljava/lang/String;J)V

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/view/menu/o82;->q(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    :cond_f
    invoke-virtual/range {p0 .. p1}, Landroidx/appcompat/view/menu/o82;->g(Landroidx/appcompat/view/menu/cb2;)Landroidx/appcompat/view/menu/rw1;

    if-nez v9, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    iget-object v3, v2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    const-string v4, "_f"

    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/view/menu/lg1;->C0(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/gi1;

    move-result-object v0

    goto :goto_6

    :cond_10
    const/4 v3, 0x1

    if-ne v9, v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    iget-object v3, v2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    const-string v4, "_v"

    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/view/menu/lg1;->C0(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/gi1;

    move-result-object v0

    goto :goto_6

    :cond_11
    const/4 v0, 0x0

    :goto_6
    if-nez v0, :cond_26

    const-wide/32 v3, 0x36ee80

    div-long v10, v12, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v14, 0x1

    add-long/2addr v10, v14

    mul-long/2addr v10, v3

    const-string v3, "_dac"

    const-string v4, "_et"

    const-string v15, "_r"

    const-string v14, "_c"

    if-nez v9, :cond_24

    :try_start_3
    new-instance v0, Landroidx/appcompat/view/menu/v92;

    const-string v9, "_fot"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v19, "auto"

    move-object v10, v14

    move-object v14, v0

    move-object v11, v15

    move-object v15, v9

    move-wide/from16 v16, v12

    invoke-direct/range {v14 .. v19}, Landroidx/appcompat/view/menu/v92;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/view/menu/o82;->x(Landroidx/appcompat/view/menu/v92;Landroidx/appcompat/view/menu/cb2;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, v1, Landroidx/appcompat/view/menu/o82;->k:Landroidx/appcompat/view/menu/lv1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroidx/appcompat/view/menu/lv1;

    iget-object v0, v2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_12

    goto/16 :goto_9

    :cond_12
    iget-object v14, v9, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v14

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/lv1;->b()Z

    move-result v14

    if-nez v14, :cond_13

    iget-object v0, v9, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->J()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v6, "Install Referrer Reporter is not available"

    invoke-virtual {v0, v6}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_13
    new-instance v14, Landroidx/appcompat/view/menu/jv1;

    invoke-direct {v14, v9, v0}, Landroidx/appcompat/view/menu/jv1;-><init>(Landroidx/appcompat/view/menu/lv1;Ljava/lang/String;)V

    iget-object v0, v9, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    new-instance v0, Landroid/content/Intent;

    const-string v15, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {v0, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v15, Landroid/content/ComponentName;

    const-string v8, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    invoke-direct {v15, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v8, v9, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/cx1;->a()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    if-nez v8, :cond_14

    iget-object v0, v9, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->N()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v6, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    invoke-virtual {v0, v6}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_14
    const/4 v15, 0x0

    invoke-virtual {v8, v0, v15}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_17

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_17

    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v8, :cond_19

    iget-object v15, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-eqz v8, :cond_16

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/lv1;->b()Z

    move-result v6

    if-eqz v6, :cond_16

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Landroidx/appcompat/view/menu/hf;->b()Landroidx/appcompat/view/menu/hf;

    move-result-object v0

    iget-object v8, v9, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/cx1;->a()Landroid/content/Context;

    move-result-object v8

    const/4 v15, 0x1

    invoke-virtual {v0, v8, v6, v14, v15}, Landroidx/appcompat/view/menu/hf;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iget-object v6, v9, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v6

    const-string v14, "Install Referrer Service is"

    if-eqz v0, :cond_15

    const-string v0, "available"

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_8

    :cond_15
    const-string v0, "not available"

    :goto_7
    invoke-virtual {v6, v14, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_a

    :goto_8
    :try_start_5
    iget-object v6, v9, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v6

    const-string v9, "Exception occurred while binding to Install Referrer Service"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v9, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a

    :cond_16
    iget-object v0, v9, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v6, "Play Store version 8.3.73 or higher required for Install Referrer"

    invoke-virtual {v0, v6}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_17
    iget-object v0, v9, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->J()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v6, "Play Service for fetching Install Referrer is unavailable on device"

    invoke-virtual {v0, v6}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto :goto_a

    :cond_18
    :goto_9
    iget-object v0, v9, Landroidx/appcompat/view/menu/lv1;->a:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->N()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v6, "Install Referrer Reporter was called with invalid app package name"

    invoke-virtual {v0, v6}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    :cond_19
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v14, 0x1

    invoke-virtual {v6, v10, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v6, v11, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-wide/16 v9, 0x0

    invoke-virtual {v6, v7, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v6, v5, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v11, v22

    invoke-virtual {v6, v11, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    move-object/from16 v8, v21

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v6, v4, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-boolean v0, v2, Landroidx/appcompat/view/menu/cb2;->B:Z

    if-eqz v0, :cond_1a

    invoke-virtual {v6, v3, v14, v15}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1a
    iget-object v0, v2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-static {v3}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m82;->u()V

    const-string v4, "first_open_count"

    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/view/menu/lg1;->w0(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    iget-object v0, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v4, "PackageManager is null, first open report might be inaccurate. appId"

    invoke-static {v3}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v21, v5

    :cond_1b
    :goto_b
    const-wide/16 v3, 0x0

    goto/16 :goto_13

    :cond_1c
    :try_start_6
    iget-object v0, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/sa1;->a(Landroid/content/Context;)Landroidx/appcompat/view/menu/ah0;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/view/menu/ah0;->e(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_c

    :catch_2
    move-exception v0

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v4

    const-string v14, "Package info is null, first open report might be inaccurate. appId"

    invoke-static {v3}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v4, v14, v15, v0}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_c
    if-eqz v0, :cond_21

    iget-wide v14, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v16, 0x0

    cmp-long v4, v14, v16

    if-eqz v4, :cond_21

    move-object/from16 v21, v5

    iget-wide v4, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    cmp-long v0, v14, v4

    if-eqz v0, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    sget-object v4, Landroidx/appcompat/view/menu/si1;->o0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v0, v4}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-wide/16 v4, 0x0

    cmp-long v0, v9, v4

    if-nez v0, :cond_1e

    const-wide/16 v4, 0x1

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_d

    :cond_1d
    const-wide/16 v4, 0x1

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_1e
    :goto_d
    const/4 v15, 0x0

    goto :goto_e

    :cond_1f
    const/4 v15, 0x1

    :goto_e
    new-instance v0, Landroidx/appcompat/view/menu/v92;

    const-string v4, "_fi"

    if-eqz v15, :cond_20

    const-wide/16 v14, 0x1

    goto :goto_f

    :cond_20
    const-wide/16 v14, 0x0

    :goto_f
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v19, "auto"

    move-object v14, v0

    move-object v15, v4

    move-wide/from16 v16, v12

    invoke-direct/range {v14 .. v19}, Landroidx/appcompat/view/menu/v92;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/view/menu/o82;->x(Landroidx/appcompat/view/menu/v92;Landroidx/appcompat/view/menu/cb2;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_10

    :cond_21
    move-object/from16 v21, v5

    :goto_10
    :try_start_8
    iget-object v0, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/sa1;->a(Landroid/content/Context;)Landroidx/appcompat/view/menu/ah0;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroidx/appcompat/view/menu/ah0;->c(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_11

    :catch_3
    move-exception v0

    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v4

    const-string v5, "Application info is null, first open report might be inaccurate. appId"

    invoke-static {v3}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v0}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_1b

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_22

    const-wide/16 v3, 0x1

    invoke-virtual {v6, v11, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto :goto_12

    :cond_22
    const-wide/16 v3, 0x1

    :goto_12
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1b

    invoke-virtual {v6, v8, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    goto/16 :goto_b

    :goto_13
    cmp-long v0, v9, v3

    if-ltz v0, :cond_23

    move-object/from16 v3, v21

    invoke-virtual {v6, v3, v9, v10}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_23
    new-instance v0, Landroidx/appcompat/view/menu/oi1;

    const-string v15, "_f"

    new-instance v3, Landroidx/appcompat/view/menu/ei1;

    invoke-direct {v3, v6}, Landroidx/appcompat/view/menu/ei1;-><init>(Landroid/os/Bundle;)V

    const-string v17, "auto"

    move-object v14, v0

    move-object/from16 v16, v3

    move-wide/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Landroidx/appcompat/view/menu/oi1;-><init>(Ljava/lang/String;Landroidx/appcompat/view/menu/ei1;Ljava/lang/String;J)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/view/menu/o82;->U(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    goto/16 :goto_14

    :cond_24
    move-object v7, v14

    move-object v6, v15

    const/4 v5, 0x1

    if-ne v9, v5, :cond_27

    new-instance v0, Landroidx/appcompat/view/menu/v92;

    const-string v15, "_fvt"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const-string v19, "auto"

    move-object v14, v0

    move-wide/from16 v16, v12

    invoke-direct/range {v14 .. v19}, Landroidx/appcompat/view/menu/v92;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/view/menu/o82;->x(Landroidx/appcompat/view/menu/v92;Landroidx/appcompat/view/menu/cb2;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v8, 0x1

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v4, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-boolean v4, v2, Landroidx/appcompat/view/menu/cb2;->B:Z

    if-eqz v4, :cond_25

    invoke-virtual {v0, v3, v8, v9}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_25
    new-instance v3, Landroidx/appcompat/view/menu/oi1;

    const-string v15, "_v"

    new-instance v4, Landroidx/appcompat/view/menu/ei1;

    invoke-direct {v4, v0}, Landroidx/appcompat/view/menu/ei1;-><init>(Landroid/os/Bundle;)V

    const-string v17, "auto"

    move-object v14, v3

    move-object/from16 v16, v4

    move-wide/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Landroidx/appcompat/view/menu/oi1;-><init>(Ljava/lang/String;Landroidx/appcompat/view/menu/ei1;Ljava/lang/String;J)V

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/view/menu/o82;->U(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    goto :goto_14

    :cond_26
    iget-boolean v0, v2, Landroidx/appcompat/view/menu/cb2;->u:Z

    if-eqz v0, :cond_27

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Landroidx/appcompat/view/menu/oi1;

    const-string v15, "_cd"

    new-instance v4, Landroidx/appcompat/view/menu/ei1;

    invoke-direct {v4, v0}, Landroidx/appcompat/view/menu/ei1;-><init>(Landroid/os/Bundle;)V

    const-string v17, "auto"

    move-object v14, v3

    move-object/from16 v16, v4

    move-wide/from16 v18, v12

    invoke-direct/range {v14 .. v19}, Landroidx/appcompat/view/menu/oi1;-><init>(Ljava/lang/String;Landroidx/appcompat/view/menu/ei1;Ljava/lang/String;J)V

    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/view/menu/o82;->U(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    :cond_27
    :goto_14
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lg1;->T0()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lg1;->R0()V

    return-void

    :goto_15
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    throw v0
.end method

.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final a0(Ljava/lang/String;)Landroidx/appcompat/view/menu/fh1;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->C:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/fh1;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/lg1;->G0(Ljava/lang/String;)Landroidx/appcompat/view/menu/fh1;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/o82;->C:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0

    :cond_1
    sget-object p1, Landroidx/appcompat/view/menu/fh1;->f:Landroidx/appcompat/view/menu/fh1;

    return-object p1
.end method

.method public final b()Landroidx/appcompat/view/menu/cc;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    return-object v0
.end method

.method public final b0(Landroidx/appcompat/view/menu/cb2;)V
    .locals 7

    const-string v0, "app_id=?"

    iget-object v1, p0, Landroidx/appcompat/view/menu/o82;->y:Ljava/util/List;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/appcompat/view/menu/o82;->z:Ljava/util/List;

    iget-object v2, p0, Landroidx/appcompat/view/menu/o82;->y:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    iget-object v2, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/m82;->u()V

    :try_start_0
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lg1;->B()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "apps"

    invoke-virtual {v3, v5, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const-string v6, "events"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "user_attributes"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "conditional_properties"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "raw_events_metadata"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "queue"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "audience_filter_values"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "main_event_params"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "default_event_params"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    const-string v6, "trigger_uris"

    invoke-virtual {v3, v6, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v5, v0

    if-lez v5, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v3, "Reset analytics data. app, records"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v2, v4}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v3, "Error resetting analytics data. appId, error"

    invoke-static {v2}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2, v0}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-boolean v0, p1, Landroidx/appcompat/view/menu/cb2;->t:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o82;->Z(Landroidx/appcompat/view/menu/cb2;)V

    :cond_2
    return-void
.end method

.method public final c(Ljava/nio/channels/FileChannel;)I
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Unexpected data length. Bytes read"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Failed to read from channel"

    invoke-virtual {v1, v2, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return v0

    :cond_3
    :goto_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v1, "Bad channel to read from"

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    return v0
.end method

.method public final c0()Landroidx/appcompat/view/menu/qf1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->z()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    return-object v0
.end method

.method public final d()Landroidx/appcompat/view/menu/mf1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->d()Landroidx/appcompat/view/menu/mf1;

    move-result-object v0

    return-object v0
.end method

.method public final e(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/rv1;->J(Ljava/lang/String;)Landroidx/appcompat/view/menu/or1;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o82;->Q(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lz1;->o()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/o82;->a0(Ljava/lang/String;)Landroidx/appcompat/view/menu/fh1;

    move-result-object v2

    new-instance v3, Landroidx/appcompat/view/menu/dg1;

    invoke-direct {v3}, Landroidx/appcompat/view/menu/dg1;-><init>()V

    invoke-virtual {p0, p1, v2, v1, v3}, Landroidx/appcompat/view/menu/o82;->f(Ljava/lang/String;Landroidx/appcompat/view/menu/fh1;Landroidx/appcompat/view/menu/lz1;Landroidx/appcompat/view/menu/dg1;)Landroidx/appcompat/view/menu/fh1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fh1;->e()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/i92;->h0(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    const-string v3, "_npa"

    invoke-virtual {v1, p1, v3}, Landroidx/appcompat/view/menu/lg1;->F0(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/z92;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object p1, v1, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/o82;->a:Landroidx/appcompat/view/menu/rv1;

    sget-object v3, Landroidx/appcompat/view/menu/lz1$a;->q:Landroidx/appcompat/view/menu/lz1$a;

    invoke-virtual {v1, p1, v3}, Landroidx/appcompat/view/menu/rv1;->K(Ljava/lang/String;Landroidx/appcompat/view/menu/lz1$a;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    move p1, v2

    :goto_0
    if-ne p1, v2, :cond_3

    const-string p1, "denied"

    goto :goto_1

    :cond_3
    const-string p1, "granted"

    :goto_1
    const-string v1, "ad_personalization"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4
    return-object v1
.end method

.method public final e0()Landroidx/appcompat/view/menu/lg1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->c:Landroidx/appcompat/view/menu/lg1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/o82;->j(Landroidx/appcompat/view/menu/m82;)Landroidx/appcompat/view/menu/m82;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/lg1;

    return-object v0
.end method

.method public final f(Ljava/lang/String;Landroidx/appcompat/view/menu/fh1;Landroidx/appcompat/view/menu/lz1;Landroidx/appcompat/view/menu/dg1;)Landroidx/appcompat/view/menu/fh1;
    .locals 5

    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/rv1;->J(Ljava/lang/String;)Landroidx/appcompat/view/menu/or1;

    move-result-object v0

    const-string v1, "-"

    const/16 v2, 0x5a

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/fh1;->f()Ljava/lang/Boolean;

    move-result-object p1

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, p3, :cond_0

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/fh1;->a()I

    move-result v2

    sget-object p1, Landroidx/appcompat/view/menu/lz1$a;->p:Landroidx/appcompat/view/menu/lz1$a;

    invoke-virtual {p4, p1, v2}, Landroidx/appcompat/view/menu/dg1;->c(Landroidx/appcompat/view/menu/lz1$a;I)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/appcompat/view/menu/lz1$a;->p:Landroidx/appcompat/view/menu/lz1$a;

    sget-object p2, Landroidx/appcompat/view/menu/bg1;->u:Landroidx/appcompat/view/menu/bg1;

    invoke-virtual {p4, p1, p2}, Landroidx/appcompat/view/menu/dg1;->d(Landroidx/appcompat/view/menu/lz1$a;Landroidx/appcompat/view/menu/bg1;)V

    :goto_0
    new-instance p1, Landroidx/appcompat/view/menu/fh1;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p3, v2, p2, v1}, Landroidx/appcompat/view/menu/fh1;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1

    :cond_1
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/fh1;->f()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/fh1;->a()I

    move-result v2

    sget-object p2, Landroidx/appcompat/view/menu/lz1$a;->p:Landroidx/appcompat/view/menu/lz1$a;

    invoke-virtual {p4, p2, v2}, Landroidx/appcompat/view/menu/dg1;->c(Landroidx/appcompat/view/menu/lz1$a;I)V

    goto :goto_1

    :cond_2
    iget-object p2, p0, Landroidx/appcompat/view/menu/o82;->a:Landroidx/appcompat/view/menu/rv1;

    sget-object v3, Landroidx/appcompat/view/menu/lz1$a;->p:Landroidx/appcompat/view/menu/lz1$a;

    invoke-virtual {p2, p1, v3}, Landroidx/appcompat/view/menu/rv1;->C(Ljava/lang/String;Landroidx/appcompat/view/menu/lz1$a;)Landroidx/appcompat/view/menu/lz1$a;

    move-result-object p2

    sget-object v4, Landroidx/appcompat/view/menu/lz1$a;->n:Landroidx/appcompat/view/menu/lz1$a;

    if-ne p2, v4, :cond_3

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/lz1;->s()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/lz1;->s()Ljava/lang/Boolean;

    move-result-object v0

    sget-object p2, Landroidx/appcompat/view/menu/bg1;->p:Landroidx/appcompat/view/menu/bg1;

    invoke-virtual {p4, v3, p2}, Landroidx/appcompat/view/menu/dg1;->d(Landroidx/appcompat/view/menu/lz1$a;Landroidx/appcompat/view/menu/bg1;)V

    :cond_3
    if-nez v0, :cond_4

    iget-object p2, p0, Landroidx/appcompat/view/menu/o82;->a:Landroidx/appcompat/view/menu/rv1;

    invoke-virtual {p2, p1, v3}, Landroidx/appcompat/view/menu/rv1;->K(Ljava/lang/String;Landroidx/appcompat/view/menu/lz1$a;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object p2, Landroidx/appcompat/view/menu/bg1;->o:Landroidx/appcompat/view/menu/bg1;

    invoke-virtual {p4, v3, p2}, Landroidx/appcompat/view/menu/dg1;->d(Landroidx/appcompat/view/menu/lz1$a;Landroidx/appcompat/view/menu/bg1;)V

    :cond_4
    :goto_1
    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Landroidx/appcompat/view/menu/o82;->a:Landroidx/appcompat/view/menu/rv1;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/rv1;->Y(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/appcompat/view/menu/rv1;->S(Ljava/lang/String;)Ljava/util/SortedSet;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_5

    goto :goto_2

    :cond_5
    new-instance p3, Landroidx/appcompat/view/menu/fh1;

    sget-object p4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, ""

    if-eqz p2, :cond_6

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-direct {p3, p4, v2, v0, v1}, Landroidx/appcompat/view/menu/fh1;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p3

    :cond_7
    :goto_2
    new-instance p1, Landroidx/appcompat/view/menu/fh1;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p3, v2, p2, v1}, Landroidx/appcompat/view/menu/fh1;-><init>(Ljava/lang/Boolean;ILjava/lang/Boolean;Ljava/lang/String;)V

    return-object p1

    :cond_8
    sget-object p1, Landroidx/appcompat/view/menu/fh1;->f:Landroidx/appcompat/view/menu/fh1;

    return-object p1
.end method

.method public final f0()Landroidx/appcompat/view/menu/mt1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v0

    return-object v0
.end method

.method public final g(Landroidx/appcompat/view/menu/cb2;)Landroidx/appcompat/view/menu/rw1;
    .locals 11

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Landroidx/appcompat/view/menu/cb2;->I:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->D:Ljava/util/Map;

    iget-object v2, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    new-instance v3, Landroidx/appcompat/view/menu/o82$b;

    iget-object v4, p1, Landroidx/appcompat/view/menu/cb2;->I:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v1}, Landroidx/appcompat/view/menu/o82$b;-><init>(Landroidx/appcompat/view/menu/o82;Ljava/lang/String;Landroidx/appcompat/view/menu/g92;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    iget-object v2, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/lg1;->D0(Ljava/lang/String;)Landroidx/appcompat/view/menu/rw1;

    move-result-object v0

    iget-object v2, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/o82;->Q(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v2

    iget-object v3, p1, Landroidx/appcompat/view/menu/cb2;->H:Ljava/lang/String;

    invoke-static {v3}, Landroidx/appcompat/view/menu/lz1;->e(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/lz1;->d(Landroidx/appcompat/view/menu/lz1;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lz1;->x()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    iget-object v4, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    iget-boolean v5, p1, Landroidx/appcompat/view/menu/cb2;->A:Z

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/view/menu/p62;->A(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Landroidx/appcompat/view/menu/rw1;

    iget-object v4, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    iget-object v5, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroidx/appcompat/view/menu/rw1;-><init>(Landroidx/appcompat/view/menu/cx1;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lz1;->y()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/o82;->n(Landroidx/appcompat/view/menu/lz1;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/view/menu/rw1;->x(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lz1;->x()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/rw1;->S(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lz1;->x()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/rw1;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/rw1;->S(Ljava/lang/String;)V

    iget-boolean v3, p1, Landroidx/appcompat/view/menu/cb2;->A:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    iget-object v4, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroidx/appcompat/view/menu/p62;->z(Ljava/lang/String;Landroidx/appcompat/view/menu/lz1;)Landroid/util/Pair;

    move-result-object v3

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-string v4, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/o82;->n(Landroidx/appcompat/view/menu/lz1;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/rw1;->x(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    iget-object v3, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    const-string v4, "_id"

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/view/menu/lg1;->F0(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/z92;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    iget-object v3, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    const-string v4, "_lair"

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/view/menu/lg1;->F0(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/z92;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v2

    invoke-interface {v2}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v7

    new-instance v2, Landroidx/appcompat/view/menu/z92;

    iget-object v4, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    const-string v5, "auto"

    const-string v6, "_lair"

    const-wide/16 v9, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroidx/appcompat/view/menu/z92;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/lg1;->e0(Landroidx/appcompat/view/menu/z92;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/rw1;->u0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lz1;->y()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/o82;->n(Landroidx/appcompat/view/menu/lz1;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/rw1;->x(Ljava/lang/String;)V

    :cond_5
    :goto_1
    iget-object v2, p1, Landroidx/appcompat/view/menu/cb2;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/rw1;->M(Ljava/lang/String;)V

    iget-object v2, p1, Landroidx/appcompat/view/menu/cb2;->C:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/rw1;->e(Ljava/lang/String;)V

    iget-object v2, p1, Landroidx/appcompat/view/menu/cb2;->w:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p1, Landroidx/appcompat/view/menu/cb2;->w:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/rw1;->J(Ljava/lang/String;)V

    :cond_6
    iget-wide v2, p1, Landroidx/appcompat/view/menu/cb2;->q:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_7

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/rw1;->d0(J)V

    :cond_7
    iget-object v2, p1, Landroidx/appcompat/view/menu/cb2;->o:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p1, Landroidx/appcompat/view/menu/cb2;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/rw1;->F(Ljava/lang/String;)V

    :cond_8
    iget-wide v2, p1, Landroidx/appcompat/view/menu/cb2;->v:J

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/rw1;->c(J)V

    iget-object v2, p1, Landroidx/appcompat/view/menu/cb2;->p:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/rw1;->B(Ljava/lang/String;)V

    :cond_9
    iget-wide v2, p1, Landroidx/appcompat/view/menu/cb2;->r:J

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/rw1;->X(J)V

    iget-boolean v2, p1, Landroidx/appcompat/view/menu/cb2;->t:Z

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/rw1;->y(Z)V

    iget-object v2, p1, Landroidx/appcompat/view/menu/cb2;->s:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p1, Landroidx/appcompat/view/menu/cb2;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/rw1;->P(Ljava/lang/String;)V

    :cond_a
    iget-boolean v2, p1, Landroidx/appcompat/view/menu/cb2;->A:Z

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/rw1;->g(Z)V

    iget-object v2, p1, Landroidx/appcompat/view/menu/cb2;->D:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/rw1;->d(Ljava/lang/Boolean;)V

    iget-wide v2, p1, Landroidx/appcompat/view/menu/cb2;->E:J

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/rw1;->Z(J)V

    invoke-static {}, Landroidx/appcompat/view/menu/ed2;->a()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/si1;->w0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v2

    iget-object v3, p1, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    sget-object v4, Landroidx/appcompat/view/menu/si1;->y0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/view/menu/qf1;->B(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    iget-object v2, p1, Landroidx/appcompat/view/menu/cb2;->J:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/rw1;->V(Ljava/lang/String;)V

    :cond_c
    invoke-static {}, Landroidx/appcompat/view/menu/oa2;->a()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/si1;->v0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v1, p1, Landroidx/appcompat/view/menu/cb2;->F:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/rw1;->f(Ljava/util/List;)V

    goto :goto_2

    :cond_d
    invoke-static {}, Landroidx/appcompat/view/menu/oa2;->a()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/si1;->u0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/rw1;->f(Ljava/util/List;)V

    :cond_e
    :goto_2
    invoke-static {}, Landroidx/appcompat/view/menu/wd2;->a()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/view/menu/si1;->A0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-boolean v1, p1, Landroidx/appcompat/view/menu/cb2;->K:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/rw1;->C(Z)V

    :cond_f
    invoke-static {}, Landroidx/appcompat/view/menu/sc2;->a()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/view/menu/si1;->L0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget v1, p1, Landroidx/appcompat/view/menu/cb2;->O:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/rw1;->b(I)V

    :cond_10
    iget-wide v1, p1, Landroidx/appcompat/view/menu/cb2;->L:J

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/rw1;->n0(J)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/rw1;->s()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/lg1;->V(Landroidx/appcompat/view/menu/rw1;)V

    :cond_11
    return-object v0
.end method

.method public final g0()Landroidx/appcompat/view/menu/cu1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->b:Landroidx/appcompat/view/menu/cu1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/o82;->j(Landroidx/appcompat/view/menu/m82;)Landroidx/appcompat/view/menu/m82;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/cu1;

    return-object v0
.end method

.method public final h()Landroidx/appcompat/view/menu/jw1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    return-object v0
.end method

.method public final h0()Landroidx/appcompat/view/menu/rv1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->a:Landroidx/appcompat/view/menu/rv1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/o82;->j(Landroidx/appcompat/view/menu/m82;)Landroidx/appcompat/view/menu/m82;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/rv1;

    return-object v0
.end method

.method public final i0()Landroidx/appcompat/view/menu/cx1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    return-object v0
.end method

.method public final j0()Landroidx/appcompat/view/menu/p32;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->h:Landroidx/appcompat/view/menu/p32;

    invoke-static {v0}, Landroidx/appcompat/view/menu/o82;->j(Landroidx/appcompat/view/menu/m82;)Landroidx/appcompat/view/menu/m82;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/p32;

    return-object v0
.end method

.method public final k0()Landroidx/appcompat/view/menu/p62;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    return-object v0
.end method

.method public final l()Landroidx/appcompat/view/menu/pt1;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    return-object v0
.end method

.method public final l0()Landroidx/appcompat/view/menu/k82;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->j:Landroidx/appcompat/view/menu/k82;

    return-object v0
.end method

.method public final m(Landroidx/appcompat/view/menu/rw1;)Ljava/lang/Boolean;
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rw1;->z()J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/sa1;->a(Landroid/content/Context;)Landroidx/appcompat/view/menu/ah0;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rw1;->t0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/ah0;->e(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rw1;->z()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/sa1;->a(Landroid/content/Context;)Landroidx/appcompat/view/menu/ah0;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rw1;->t0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/ah0;->e(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rw1;->h()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final m0()Landroidx/appcompat/view/menu/i92;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->g:Landroidx/appcompat/view/menu/i92;

    invoke-static {v0}, Landroidx/appcompat/view/menu/o82;->j(Landroidx/appcompat/view/menu/m82;)Landroidx/appcompat/view/menu/m82;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/i92;

    return-object v0
.end method

.method public final n(Landroidx/appcompat/view/menu/lz1;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/lz1;->y()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    new-array p1, p1, [B

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/x92;->U0()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "%032x"

    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final n0()Landroidx/appcompat/view/menu/x92;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/cx1;->L()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    return-object v0
.end method

.method public final o(Landroidx/appcompat/view/menu/if1;)V
    .locals 1

    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/o82;->W(Ljava/lang/String;)Landroidx/appcompat/view/menu/cb2;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/o82;->p(Landroidx/appcompat/view/menu/if1;Landroidx/appcompat/view/menu/cb2;)V

    :cond_0
    return-void
.end method

.method public final o0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/o82;->n:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o82;->n:Z

    invoke-direct {p0}, Landroidx/appcompat/view/menu/o82;->P()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->x:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/o82;->c(Ljava/nio/channels/FileChannel;)I

    move-result v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/cx1;->B()Landroidx/appcompat/view/menu/zs1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/zs1;->D()I

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->n()V

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Panic: can\'t downgrade version. Previous, current version"

    invoke-virtual {v2, v3, v0, v1}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Landroidx/appcompat/view/menu/o82;->x:Ljava/nio/channels/FileChannel;

    invoke-virtual {p0, v1, v2}, Landroidx/appcompat/view/menu/o82;->J(ILjava/nio/channels/FileChannel;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgraded. Previous, current version"

    invoke-virtual {v2, v3, v0, v1}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Storage version upgrade failed. Previous, current version"

    invoke-virtual {v2, v3, v0, v1}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final p(Landroidx/appcompat/view/menu/if1;Landroidx/appcompat/view/menu/cb2;)V
    .locals 10

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object v0, v0, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    invoke-static {p2}, Landroidx/appcompat/view/menu/o82;->d0(Landroidx/appcompat/view/menu/cb2;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p2, Landroidx/appcompat/view/menu/cb2;->t:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/o82;->g(Landroidx/appcompat/view/menu/cb2;)Landroidx/appcompat/view/menu/rw1;

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lg1;->Q0()V

    :try_start_0
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/o82;->g(Landroidx/appcompat/view/menu/cb2;)Landroidx/appcompat/view/menu/rw1;

    iget-object v0, p1, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    iget-object v1, p1, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object v1, v1, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/lg1;->B0(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/if1;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v3, "Removing conditional user property"

    iget-object v4, p1, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    iget-object v5, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v5

    iget-object v6, p1, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object v6, v6, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/mt1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    iget-object v3, p1, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object v3, v3, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/lg1;->D(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Landroidx/appcompat/view/menu/if1;->q:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    iget-object v3, p1, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object v3, v3, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/lg1;->L0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_0
    iget-object v1, p1, Landroidx/appcompat/view/menu/if1;->w:Landroidx/appcompat/view/menu/oi1;

    if-eqz v1, :cond_5

    iget-object v1, v1, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ei1;->k()Landroid/os/Bundle;

    move-result-object v1

    :goto_1
    move-object v4, v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    move-result-object v1

    iget-object v3, p1, Landroidx/appcompat/view/menu/if1;->w:Landroidx/appcompat/view/menu/oi1;

    invoke-static {v3}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/oi1;

    iget-object v3, v3, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    iget-object v5, v0, Landroidx/appcompat/view/menu/if1;->n:Ljava/lang/String;

    iget-object p1, p1, Landroidx/appcompat/view/menu/if1;->w:Landroidx/appcompat/view/menu/oi1;

    iget-wide v6, p1, Landroidx/appcompat/view/menu/oi1;->p:J

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual/range {v1 .. v9}, Landroidx/appcompat/view/menu/x92;->G(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZZ)Landroidx/appcompat/view/menu/oi1;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/oi1;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/o82;->Y(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string v0, "Conditional user property doesn\'t exist"

    iget-object v1, p1, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    invoke-static {v1}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v2

    iget-object p1, p1, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object p1, p1, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroidx/appcompat/view/menu/mt1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/lg1;->T0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/lg1;->R0()V

    return-void

    :goto_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    throw p1
.end method

.method public final p0()V
    .locals 2

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/o82;->m:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "UploadController is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final q(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    invoke-static/range {p2 .. p2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    iget-object v2, v0, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    move-object/from16 v3, p1

    iget-wide v10, v3, Landroidx/appcompat/view/menu/oi1;->p:J

    invoke-static/range {p1 .. p1}, Landroidx/appcompat/view/menu/wt1;->b(Landroidx/appcompat/view/menu/oi1;)Landroidx/appcompat/view/menu/wt1;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v4, v1, Landroidx/appcompat/view/menu/o82;->E:Landroidx/appcompat/view/menu/t32;

    if-eqz v4, :cond_1

    iget-object v4, v1, Landroidx/appcompat/view/menu/o82;->F:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, v1, Landroidx/appcompat/view/menu/o82;->E:Landroidx/appcompat/view/menu/t32;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    :goto_1
    iget-object v5, v3, Landroidx/appcompat/view/menu/wt1;->d:Landroid/os/Bundle;

    const/4 v12, 0x0

    invoke-static {v4, v5, v12}, Landroidx/appcompat/view/menu/x92;->W(Landroidx/appcompat/view/menu/t32;Landroid/os/Bundle;Z)V

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/wt1;->a()Landroidx/appcompat/view/menu/oi1;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    invoke-static {v3, v0}, Landroidx/appcompat/view/menu/i92;->c0(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)Z

    move-result v4

    if-nez v4, :cond_2

    return-void

    :cond_2
    iget-boolean v4, v0, Landroidx/appcompat/view/menu/cb2;->t:Z

    if-nez v4, :cond_3

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/o82;->g(Landroidx/appcompat/view/menu/cb2;)Landroidx/appcompat/view/menu/rw1;

    return-void

    :cond_3
    iget-object v4, v0, Landroidx/appcompat/view/menu/cb2;->F:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v5, v3, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Landroidx/appcompat/view/menu/oi1;->n:Landroidx/appcompat/view/menu/ei1;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/ei1;->k()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "ga_safelisted"

    const-wide/16 v6, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    new-instance v5, Landroidx/appcompat/view/menu/oi1;

    iget-object v14, v3, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    new-instance v15, Landroidx/appcompat/view/menu/ei1;

    invoke-direct {v15, v4}, Landroidx/appcompat/view/menu/ei1;-><init>(Landroid/os/Bundle;)V

    iget-object v4, v3, Landroidx/appcompat/view/menu/oi1;->o:Ljava/lang/String;

    iget-wide v6, v3, Landroidx/appcompat/view/menu/oi1;->p:J

    move-object v13, v5

    move-object/from16 v16, v4

    move-wide/from16 v17, v6

    invoke-direct/range {v13 .. v18}, Landroidx/appcompat/view/menu/oi1;-><init>(Ljava/lang/String;Landroidx/appcompat/view/menu/ei1;Ljava/lang/String;J)V

    goto :goto_2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    iget-object v4, v3, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    iget-object v3, v3, Landroidx/appcompat/view/menu/oi1;->o:Ljava/lang/String;

    const-string v5, "Dropping non-safelisted event. appId, event name, origin"

    invoke-virtual {v0, v5, v2, v4, v3}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_5
    move-object v13, v3

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/lg1;->Q0()V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v3

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/m82;->u()V

    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    const/4 v5, 0x2

    const/4 v14, 0x1

    if-gez v4, :cond_6

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    const-string v6, "Invalid time querying timed out conditional properties"

    invoke-static {v2}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_c

    :cond_6
    const-string v6, "active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout"

    new-array v7, v5, [Ljava/lang/String;

    aput-object v2, v7, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v14

    invoke-virtual {v3, v6, v7}, Landroidx/appcompat/view/menu/lg1;->S(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/if1;

    if-eqz v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v7

    const-string v8, "User property timed out"

    iget-object v9, v6, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    iget-object v15, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v15

    iget-object v14, v6, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object v14, v14, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {v15, v14}, Landroidx/appcompat/view/menu/mt1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v6, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/v92;->d()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v7, v8, v9, v14, v15}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, v6, Landroidx/appcompat/view/menu/if1;->s:Landroidx/appcompat/view/menu/oi1;

    if-eqz v7, :cond_8

    new-instance v7, Landroidx/appcompat/view/menu/oi1;

    iget-object v8, v6, Landroidx/appcompat/view/menu/if1;->s:Landroidx/appcompat/view/menu/oi1;

    invoke-direct {v7, v8, v10, v11}, Landroidx/appcompat/view/menu/oi1;-><init>(Landroidx/appcompat/view/menu/oi1;J)V

    invoke-virtual {v1, v7, v0}, Landroidx/appcompat/view/menu/o82;->Y(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v7

    iget-object v6, v6, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object v6, v6, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {v7, v2, v6}, Landroidx/appcompat/view/menu/lg1;->D(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v3

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/m82;->u()V

    if-gez v4, :cond_a

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    const-string v6, "Invalid time querying expired conditional properties"

    invoke-static {v2}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    goto :goto_5

    :cond_a
    const-string v6, "active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live"

    new-array v7, v5, [Ljava/lang/String;

    aput-object v2, v7, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v3, v6, v7}, Landroidx/appcompat/view/menu/lg1;->S(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    :goto_5
    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/view/menu/if1;

    if-eqz v7, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v8

    const-string v9, "User property expired"

    iget-object v14, v7, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    iget-object v15, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v15

    iget-object v5, v7, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object v5, v5, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {v15, v5}, Landroidx/appcompat/view/menu/mt1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v15, v7, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/v92;->d()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v8, v9, v14, v5, v15}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v5

    iget-object v8, v7, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object v8, v8, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {v5, v2, v8}, Landroidx/appcompat/view/menu/lg1;->L0(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v7, Landroidx/appcompat/view/menu/if1;->w:Landroidx/appcompat/view/menu/oi1;

    if-eqz v5, :cond_c

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v5

    iget-object v7, v7, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    iget-object v7, v7, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {v5, v2, v7}, Landroidx/appcompat/view/menu/lg1;->D(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    goto :goto_6

    :cond_d
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, v12

    :goto_7
    if-ge v5, v3, :cond_e

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Landroidx/appcompat/view/menu/oi1;

    new-instance v8, Landroidx/appcompat/view/menu/oi1;

    invoke-direct {v8, v7, v10, v11}, Landroidx/appcompat/view/menu/oi1;-><init>(Landroidx/appcompat/view/menu/oi1;J)V

    invoke-virtual {v1, v8, v0}, Landroidx/appcompat/view/menu/o82;->Y(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    goto :goto_7

    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v3

    iget-object v5, v13, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v5}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/m82;->u()V

    if-gez v4, :cond_f

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v4

    const-string v6, "Invalid time querying triggered conditional properties"

    invoke-static {v2}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/fz1;->g()Landroidx/appcompat/view/menu/mt1;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroidx/appcompat/view/menu/mt1;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v6, v2, v3, v5}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_8

    :cond_f
    const-string v4, "active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v12

    const/4 v2, 0x1

    aput-object v5, v6, v2

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v6, v5

    invoke-virtual {v3, v4, v6}, Landroidx/appcompat/view/menu/lg1;->S(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    :goto_8
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Landroidx/appcompat/view/menu/if1;

    if-eqz v15, :cond_10

    iget-object v3, v15, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    new-instance v9, Landroidx/appcompat/view/menu/z92;

    iget-object v4, v15, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    invoke-static {v4}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, v15, Landroidx/appcompat/view/menu/if1;->n:Ljava/lang/String;

    iget-object v6, v3, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/v92;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object v3, v9

    move-wide v7, v10

    move-object v12, v9

    move-object/from16 v9, v16

    invoke-direct/range {v3 .. v9}, Landroidx/appcompat/view/menu/z92;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroidx/appcompat/view/menu/lg1;->e0(Landroidx/appcompat/view/menu/z92;)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    const-string v4, "User property triggered"

    iget-object v5, v15, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    iget-object v6, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v6

    iget-object v7, v12, Landroidx/appcompat/view/menu/z92;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/mt1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v12, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    const-string v4, "Too many active user properties, ignoring"

    iget-object v5, v15, Landroidx/appcompat/view/menu/if1;->m:Ljava/lang/String;

    invoke-static {v5}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v1, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v6

    iget-object v7, v12, Landroidx/appcompat/view/menu/z92;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroidx/appcompat/view/menu/mt1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v12, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_a
    iget-object v3, v15, Landroidx/appcompat/view/menu/if1;->u:Landroidx/appcompat/view/menu/oi1;

    if-eqz v3, :cond_12

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    new-instance v3, Landroidx/appcompat/view/menu/v92;

    invoke-direct {v3, v12}, Landroidx/appcompat/view/menu/v92;-><init>(Landroidx/appcompat/view/menu/z92;)V

    iput-object v3, v15, Landroidx/appcompat/view/menu/if1;->o:Landroidx/appcompat/view/menu/v92;

    const/4 v3, 0x1

    iput-boolean v3, v15, Landroidx/appcompat/view/menu/if1;->q:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroidx/appcompat/view/menu/lg1;->b0(Landroidx/appcompat/view/menu/if1;)Z

    const/4 v12, 0x0

    goto/16 :goto_9

    :cond_13
    invoke-virtual {v1, v13, v0}, Landroidx/appcompat/view/menu/o82;->Y(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v2, :cond_14

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v12, v12, 0x1

    check-cast v3, Landroidx/appcompat/view/menu/oi1;

    new-instance v4, Landroidx/appcompat/view/menu/oi1;

    invoke-direct {v4, v3, v10, v11}, Landroidx/appcompat/view/menu/oi1;-><init>(Landroidx/appcompat/view/menu/oi1;J)V

    invoke-virtual {v1, v4, v0}, Landroidx/appcompat/view/menu/o82;->Y(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    goto :goto_b

    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lg1;->T0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lg1;->R0()V

    return-void

    :goto_c
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    throw v0
.end method

.method public final q0()V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/o82;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/o82;->s:I

    return-void
.end method

.method public final r(Landroidx/appcompat/view/menu/oi1;Ljava/lang/String;)V
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/lg1;->D0(Ljava/lang/String;)Landroidx/appcompat/view/menu/rw1;

    move-result-object v15

    if-eqz v15, :cond_4

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/rw1;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0, v15}, Landroidx/appcompat/view/menu/o82;->m(Landroidx/appcompat/view/menu/rw1;)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "_ui"

    iget-object v4, v1, Landroidx/appcompat/view/menu/oi1;->m:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v4, "Could not find package. appId"

    invoke-static/range {p2 .. p2}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "App version does not match; dropping event. appId"

    invoke-static/range {p2 .. p2}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/o82;->Q(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v30

    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v2

    sget-object v4, Landroidx/appcompat/view/menu/si1;->T0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v2, v4}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v3}, Landroidx/appcompat/view/menu/o82;->a0(Ljava/lang/String;)Landroidx/appcompat/view/menu/fh1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fh1;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v30 .. v30}, Landroidx/appcompat/view/menu/lz1;->b()I

    move-result v4

    :goto_1
    move-object/from16 v37, v2

    move/from16 v36, v4

    goto :goto_2

    :cond_3
    const-string v2, ""

    const/16 v4, 0x64

    goto :goto_1

    :goto_2
    new-instance v14, Landroidx/appcompat/view/menu/cb2;

    move-object v2, v14

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/rw1;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/rw1;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/rw1;->z()J

    move-result-wide v6

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/rw1;->v0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/rw1;->g0()J

    move-result-wide v9

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/rw1;->a0()J

    move-result-wide v11

    const/4 v13, 0x0

    invoke-virtual {v15}, Landroidx/appcompat/view/menu/rw1;->r()Z

    move-result v16

    move-object/from16 v41, v14

    move/from16 v14, v16

    const/16 v16, 0x0

    move-object/from16 v39, v15

    move/from16 v15, v16

    invoke-virtual/range {v39 .. v39}, Landroidx/appcompat/view/menu/rw1;->i()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v39 .. v39}, Landroidx/appcompat/view/menu/rw1;->v()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v39 .. v39}, Landroidx/appcompat/view/menu/rw1;->q()Z

    move-result v22

    const/16 v23, 0x0

    invoke-virtual/range {v39 .. v39}, Landroidx/appcompat/view/menu/rw1;->r0()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v39 .. v39}, Landroidx/appcompat/view/menu/rw1;->q0()Ljava/lang/Boolean;

    move-result-object v25

    invoke-virtual/range {v39 .. v39}, Landroidx/appcompat/view/menu/rw1;->c0()J

    move-result-wide v26

    invoke-virtual/range {v39 .. v39}, Landroidx/appcompat/view/menu/rw1;->n()Ljava/util/List;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v30 .. v30}, Landroidx/appcompat/view/menu/lz1;->v()Ljava/lang/String;

    move-result-object v30

    const-string v31, ""

    const/16 v32, 0x0

    invoke-virtual/range {v39 .. v39}, Landroidx/appcompat/view/menu/rw1;->t()Z

    move-result v33

    invoke-virtual/range {v39 .. v39}, Landroidx/appcompat/view/menu/rw1;->p0()J

    move-result-wide v34

    invoke-virtual/range {v39 .. v39}, Landroidx/appcompat/view/menu/rw1;->a()I

    move-result v38

    invoke-virtual/range {v39 .. v39}, Landroidx/appcompat/view/menu/rw1;->D()J

    move-result-wide v39

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v40}, Landroidx/appcompat/view/menu/cb2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJ)V

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/o82;->U(Landroidx/appcompat/view/menu/oi1;Landroidx/appcompat/view/menu/cb2;)V

    return-void

    :cond_4
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "No app data available; dropping event"

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final r0()V
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/o82;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/appcompat/view/menu/o82;->r:I

    return-void
.end method

.method public final s0()V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lg1;->S0()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    iget-object v0, v0, Landroidx/appcompat/view/menu/p62;->g:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/dv1;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    iget-object v0, v0, Landroidx/appcompat/view/menu/p62;->g:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/dv1;->b(J)V

    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/view/menu/o82;->N()V

    return-void
.end method

.method public final t0()V
    .locals 21

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    const/4 v0, 0x1

    iput-boolean v0, v7, Landroidx/appcompat/view/menu/o82;->v:Z

    const/4 v8, 0x0

    :try_start_0
    iget-object v1, v7, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/cx1;->J()Landroidx/appcompat/view/menu/h42;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/h42;->W()Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Upload data called on the client side before use of service was decided"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-boolean v8, v7, Landroidx/appcompat/view/menu/o82;->v:Z

    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->M()V

    return-void

    :catchall_0
    move-exception v0

    move v1, v8

    goto/16 :goto_10

    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Upload called in the client side when service should be used"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-boolean v8, v7, Landroidx/appcompat/view/menu/o82;->v:Z

    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->M()V

    return-void

    :cond_1
    :try_start_4
    iget-wide v1, v7, Landroidx/appcompat/view/menu/o82;->o:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    :try_start_5
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->N()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iput-boolean v8, v7, Landroidx/appcompat/view/menu/o82;->v:Z

    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->M()V

    return-void

    :cond_2
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v1, v7, Landroidx/appcompat/view/menu/o82;->y:Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Uploading requested multiple times"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iput-boolean v8, v7, Landroidx/appcompat/view/menu/o82;->v:Z

    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->M()V

    return-void

    :cond_3
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->g0()Landroidx/appcompat/view/menu/cu1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/cu1;->A()Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-nez v1, :cond_4

    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Network not connected, ignoring upload request"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->N()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iput-boolean v8, v7, Landroidx/appcompat/view/menu/o82;->v:Z

    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->M()V

    return-void

    :cond_4
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v5

    sget-object v6, Landroidx/appcompat/view/menu/si1;->U:Landroidx/appcompat/view/menu/us1;

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6}, Landroidx/appcompat/view/menu/qf1;->u(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    invoke-static {}, Landroidx/appcompat/view/menu/qf1;->G()J

    move-result-wide v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    sub-long v10, v1, v10

    move v6, v8

    :goto_0
    if-ge v6, v5, :cond_5

    :try_start_b
    invoke-virtual {v7, v9, v10, v11}, Landroidx/appcompat/view/menu/o82;->L(Ljava/lang/String;J)Z

    move-result v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v12, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    :try_start_c
    invoke-static {}, Landroidx/appcompat/view/menu/sc2;->a()Z

    move-result v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v5, :cond_8

    :try_start_d
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v5, v7, Landroidx/appcompat/view/menu/o82;->q:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {}, Landroidx/appcompat/view/menu/sc2;->a()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v10

    sget-object v11, Landroidx/appcompat/view/menu/si1;->L0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v10, v6, v11}, Landroidx/appcompat/view/menu/qf1;->B(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v10

    const-string v11, "Notifying app that trigger URIs are available. App ID"

    invoke-virtual {v10, v11, v6}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string v11, "com.google.android.gms.measurement.TRIGGERS_AVAILABLE"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v10, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, v7, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/cx1;->a()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_7
    iget-object v5, v7, Landroidx/appcompat/view/menu/o82;->q:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_8
    :try_start_e
    iget-object v5, v7, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    iget-object v5, v5, Landroidx/appcompat/view/menu/p62;->g:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/dv1;->a()J

    move-result-wide v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    cmp-long v3, v5, v3

    if-eqz v3, :cond_9

    :try_start_f
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v3

    const-string v4, "Uploading events. Elapsed time since last upload attempt (ms)"

    sub-long v5, v1, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_9
    :try_start_10
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/lg1;->C()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v4, -0x1

    if-nez v3, :cond_24

    iget-wide v10, v7, Landroidx/appcompat/view/menu/o82;->A:J
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    cmp-long v3, v10, v4

    if-nez v3, :cond_a

    :try_start_11
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/lg1;->y()J

    move-result-wide v3

    iput-wide v3, v7, Landroidx/appcompat/view/menu/o82;->A:J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :cond_a
    :try_start_12
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v3

    sget-object v4, Landroidx/appcompat/view/menu/si1;->i:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v3, v6, v4}, Landroidx/appcompat/view/menu/qf1;->u(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v4

    sget-object v5, Landroidx/appcompat/view/menu/si1;->j:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v4, v6, v5}, Landroidx/appcompat/view/menu/qf1;->u(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)I

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v5

    invoke-virtual {v5, v6, v3, v4}, Landroidx/appcompat/view/menu/lg1;->Q(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {v7, v6}, Landroidx/appcompat/view/menu/o82;->Q(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/lz1;->x()Z

    move-result v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    if-eqz v4, :cond_e

    :try_start_13
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ps1;->o0()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ps1;->o0()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_c
    move-object v4, v9

    :goto_2
    if-eqz v4, :cond_e

    move v5, v8

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_e

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    iget-object v10, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/ps1;->o0()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_d

    invoke-virtual {v10}, Landroidx/appcompat/view/menu/ps1;->o0()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-interface {v3, v8, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_4

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_e
    :goto_4
    :try_start_14
    invoke-static {}, Landroidx/appcompat/view/menu/os1;->J()Landroidx/appcompat/view/menu/os1$a;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroidx/appcompat/view/menu/qf1;->K(Ljava/lang/String;)Z

    move-result v11
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    if-eqz v11, :cond_f

    :try_start_15
    invoke-virtual {v7, v6}, Landroidx/appcompat/view/menu/o82;->Q(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v11

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/lz1;->x()Z

    move-result v11
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-eqz v11, :cond_f

    move v11, v0

    goto :goto_5

    :cond_f
    move v11, v8

    :goto_5
    :try_start_16
    invoke-virtual {v7, v6}, Landroidx/appcompat/view/menu/o82;->Q(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v12

    invoke-virtual {v12}, Landroidx/appcompat/view/menu/lz1;->x()Z

    move-result v12

    invoke-virtual {v7, v6}, Landroidx/appcompat/view/menu/o82;->Q(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/appcompat/view/menu/lz1;->y()Z

    move-result v13

    invoke-static {}, Landroidx/appcompat/view/menu/ed2;->a()Z

    move-result v14
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    if-eqz v14, :cond_10

    :try_start_17
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v14

    sget-object v15, Landroidx/appcompat/view/menu/si1;->y0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v14, v6, v15}, Landroidx/appcompat/view/menu/qf1;->B(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z

    move-result v14
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    if-eqz v14, :cond_10

    move v14, v0

    goto :goto_6

    :cond_10
    move v14, v8

    :goto_6
    move v15, v8

    :goto_7
    if-ge v15, v5, :cond_1f

    :try_start_18
    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Landroid/util/Pair;

    iget-object v9, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/q02;->x()Landroidx/appcompat/view/menu/q02$b;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/view/menu/ps1$a;

    invoke-interface {v3, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-object v0, v3

    move-object/from16 v16, v4

    const-wide/32 v3, 0x14051

    invoke-virtual {v9, v3, v4}, Landroidx/appcompat/view/menu/ps1$a;->A0(J)Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroidx/appcompat/view/menu/ps1$a;->x0(J)Landroidx/appcompat/view/menu/ps1$a;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroidx/appcompat/view/menu/ps1$a;->W(Z)Landroidx/appcompat/view/menu/ps1$a;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    if-nez v11, :cond_11

    :try_start_19
    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ps1$a;->k0()Landroidx/appcompat/view/menu/ps1$a;

    :cond_11
    if-nez v12, :cond_12

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ps1$a;->G0()Landroidx/appcompat/view/menu/ps1$a;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ps1$a;->w0()Landroidx/appcompat/view/menu/ps1$a;

    :cond_12
    if-nez v13, :cond_13

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ps1$a;->X()Landroidx/appcompat/view/menu/ps1$a;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :cond_13
    :try_start_1a
    invoke-virtual {v7, v6, v9}, Landroidx/appcompat/view/menu/o82;->B(Ljava/lang/String;Landroidx/appcompat/view/menu/ps1$a;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    if-nez v14, :cond_14

    :try_start_1b
    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ps1$a;->I0()Landroidx/appcompat/view/menu/ps1$a;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    :cond_14
    :try_start_1c
    invoke-static {}, Landroidx/appcompat/view/menu/ia2;->a()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v3

    sget-object v4, Landroidx/appcompat/view/menu/si1;->Y0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ps1$a;->S0()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    if-nez v4, :cond_16

    :try_start_1d
    const-string v4, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    if-eqz v3, :cond_15

    goto :goto_8

    :cond_15
    move-object/from16 v20, v0

    goto :goto_a

    :cond_16
    :goto_8
    :try_start_1e
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ps1$a;->T0()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move/from16 v17, v8

    move/from16 v18, v17

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroidx/appcompat/view/menu/ks1;

    const-string v8, "_fx"

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v19}, Landroidx/appcompat/view/menu/ks1;->b0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    move-object/from16 v0, v20

    const/4 v8, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x1

    goto :goto_9

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_10

    :cond_17
    const-string v0, "_f"

    invoke-virtual/range {v19 .. v19}, Landroidx/appcompat/view/menu/ks1;->b0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v18, 0x1

    :cond_18
    move-object/from16 v0, v20

    const/4 v8, 0x0

    goto :goto_9

    :cond_19
    move-object/from16 v20, v0

    if-eqz v17, :cond_1a

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ps1$a;->o0()Landroidx/appcompat/view/menu/ps1$a;

    invoke-virtual {v9, v3}, Landroidx/appcompat/view/menu/ps1$a;->I(Ljava/lang/Iterable;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_1a
    if-eqz v18, :cond_1b

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ps1$a;->N0()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v3}, Landroidx/appcompat/view/menu/o82;->F(Ljava/lang/String;Z)V

    :cond_1b
    :goto_a
    invoke-virtual {v9}, Landroidx/appcompat/view/menu/ps1$a;->r()I

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_b

    :cond_1c
    move-object/from16 v0, v16

    goto :goto_c

    :cond_1d
    move-object/from16 v20, v0

    :goto_b
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    sget-object v3, Landroidx/appcompat/view/menu/si1;->g0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v0, v6, v3}, Landroidx/appcompat/view/menu/qf1;->B(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {v9}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/q02;

    check-cast v0, Landroidx/appcompat/view/menu/ps1;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ax1;->h()[B

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/appcompat/view/menu/i92;->A([B)J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Landroidx/appcompat/view/menu/ps1$a;->w(J)Landroidx/appcompat/view/menu/ps1$a;

    :cond_1e
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroidx/appcompat/view/menu/os1$a;->s(Landroidx/appcompat/view/menu/ps1$a;)Landroidx/appcompat/view/menu/os1$a;

    :goto_c
    add-int/lit8 v15, v15, 0x1

    move-object v4, v0

    move-object/from16 v3, v20

    const/4 v0, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto/16 :goto_7

    :cond_1f
    move-object v0, v4

    invoke-static {}, Landroidx/appcompat/view/menu/ia2;->a()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v3

    sget-object v4, Landroidx/appcompat/view/menu/si1;->Y0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/os1$a;->r()I

    move-result v3

    if-nez v3, :cond_20

    invoke-direct {v7, v10}, Landroidx/appcompat/view/menu/o82;->G(Ljava/util/List;)V

    const/4 v2, 0x0

    const/16 v3, 0xcc

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/view/menu/o82;->I(ZILjava/lang/Throwable;[BLjava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    const/4 v1, 0x0

    iput-boolean v1, v7, Landroidx/appcompat/view/menu/o82;->v:Z

    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->M()V

    return-void

    :cond_20
    :try_start_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/pt1;->C(I)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    move-result-object v3

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/q02;

    check-cast v4, Landroidx/appcompat/view/menu/os1;

    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/i92;->K(Landroidx/appcompat/view/menu/os1;)Ljava/lang/String;

    move-result-object v9

    goto :goto_d

    :cond_21
    const/4 v9, 0x0

    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/q02;

    check-cast v3, Landroidx/appcompat/view/menu/os1;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/ax1;->h()[B

    move-result-object v14

    iget-object v3, v7, Landroidx/appcompat/view/menu/o82;->j:Landroidx/appcompat/view/menu/k82;

    invoke-virtual {v3, v6}, Landroidx/appcompat/view/menu/k82;->u(Ljava/lang/String;)Landroidx/appcompat/view/menu/q82;

    move-result-object v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    :try_start_20
    invoke-direct {v7, v10}, Landroidx/appcompat/view/menu/o82;->G(Ljava/util/List;)V

    iget-object v4, v7, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    iget-object v4, v4, Landroidx/appcompat/view/menu/p62;->h:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {v4, v1, v2}, Landroidx/appcompat/view/menu/dv1;->b(J)V

    const-string v1, "?"

    if-lez v5, :cond_22

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/os1$a;->t(I)Landroidx/appcompat/view/menu/ps1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ps1;->D3()Ljava/lang/String;

    move-result-object v1

    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v2, "Uploading data. app, uncompressed size, data"

    array-length v4, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v1, v4, v9}, Landroidx/appcompat/view/menu/st1;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, v7, Landroidx/appcompat/view/menu/o82;->u:Z

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->g0()Landroidx/appcompat/view/menu/cu1;

    move-result-object v11

    new-instance v13, Ljava/net/URL;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/q82;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v13, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/q82;->b()Ljava/util/Map;

    move-result-object v15

    new-instance v0, Landroidx/appcompat/view/menu/s82;

    invoke-direct {v0, v7, v6}, Landroidx/appcompat/view/menu/s82;-><init>(Landroidx/appcompat/view/menu/o82;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/m82;->u()V

    invoke-static {v13}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v14}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/view/menu/ru1;

    move-object v10, v2

    move-object v12, v6

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Landroidx/appcompat/view/menu/ru1;-><init>(Landroidx/appcompat/view/menu/cu1;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Landroidx/appcompat/view/menu/au1;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/jw1;->z(Ljava/lang/Runnable;)V
    :try_end_20
    .catch Ljava/net/MalformedURLException; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    :cond_23
    :goto_e
    const/4 v1, 0x0

    goto :goto_f

    :catch_0
    :try_start_21
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "Failed to parse upload URL. Not uploading. appId"

    invoke-static {v6}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/q82;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    :cond_24
    iput-wide v4, v7, Landroidx/appcompat/view/menu/o82;->A:J

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    invoke-static {}, Landroidx/appcompat/view/menu/qf1;->G()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/lg1;->O(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/lg1;->D0(Ljava/lang/String;)Landroidx/appcompat/view/menu/rw1;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v7, v0}, Landroidx/appcompat/view/menu/o82;->V(Landroidx/appcompat/view/menu/rw1;)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    goto :goto_e

    :goto_f
    iput-boolean v1, v7, Landroidx/appcompat/view/menu/o82;->v:Z

    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->M()V

    return-void

    :goto_10
    iput-boolean v1, v7, Landroidx/appcompat/view/menu/o82;->v:Z

    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/view/menu/o82;->M()V

    throw v0
.end method

.method public final u(Landroidx/appcompat/view/menu/ps1$a;JZ)V
    .locals 11

    if-eqz p4, :cond_0

    const-string v0, "_se"

    goto :goto_0

    :cond_0
    const-string v0, "_lte"

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ps1$a;->N0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/view/menu/lg1;->F0(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/z92;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v8, Landroidx/appcompat/view/menu/z92;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ps1$a;->N0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v4

    invoke-interface {v4}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v5

    iget-object v1, v1, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    add-long/2addr v9, p2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/view/menu/z92;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v8, Landroidx/appcompat/view/menu/z92;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ps1$a;->N0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto"

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v5

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/view/menu/z92;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    :goto_2
    invoke-static {}, Landroidx/appcompat/view/menu/ts1;->X()Landroidx/appcompat/view/menu/ts1$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/ts1$a;->u(Ljava/lang/String;)Landroidx/appcompat/view/menu/ts1$a;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v2

    invoke-interface {v2}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/ts1$a;->w(J)Landroidx/appcompat/view/menu/ts1$a;

    move-result-object v1

    iget-object v2, v8, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/ts1$a;->t(J)Landroidx/appcompat/view/menu/ts1$a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/q02;

    check-cast v1, Landroidx/appcompat/view/menu/ts1;

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/i92;->y(Landroidx/appcompat/view/menu/ps1$a;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/ps1$a;->v(ILandroidx/appcompat/view/menu/ts1;)Landroidx/appcompat/view/menu/ps1$a;

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/ps1$a;->B(Landroidx/appcompat/view/menu/ts1;)Landroidx/appcompat/view/menu/ps1$a;

    :goto_3
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroidx/appcompat/view/menu/lg1;->e0(Landroidx/appcompat/view/menu/z92;)Z

    if-eqz p4, :cond_4

    const-string p1, "session-scoped"

    goto :goto_4

    :cond_4
    const-string p1, "lifetime"

    :goto_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string p3, "Updated engagement user property. scope, value"

    iget-object p4, v8, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    invoke-virtual {p2, p3, p1, p4}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public final u0()J
    .locals 7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/m82;->u()V

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v3, v2, Landroidx/appcompat/view/menu/p62;->i:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/dv1;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_0

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/x92;->U0()Ljava/security/SecureRandom;

    move-result-object v3

    const v4, 0x5265c00

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iget-object v2, v2, Landroidx/appcompat/view/menu/p62;->i:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {v2, v3, v4}, Landroidx/appcompat/view/menu/dv1;->b(J)V

    :cond_0
    add-long/2addr v0, v3

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x18

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final v(Landroidx/appcompat/view/menu/rw1;Landroidx/appcompat/view/menu/ps1$a;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ps1$a;->P0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/dg1;->b(Ljava/lang/String;)Landroidx/appcompat/view/menu/dg1;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rw1;->t0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/o82;->Q(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v1

    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v2

    sget-object v3, Landroidx/appcompat/view/menu/si1;->V0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v2, v3}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lz1;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroidx/appcompat/view/menu/ps1$a;->j0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_0
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lz1;->s()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v2, Landroidx/appcompat/view/menu/lz1$a;->n:Landroidx/appcompat/view/menu/lz1$a;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lz1;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/dg1;->c(Landroidx/appcompat/view/menu/lz1$a;I)V

    goto :goto_0

    :cond_1
    sget-object v2, Landroidx/appcompat/view/menu/lz1$a;->n:Landroidx/appcompat/view/menu/lz1$a;

    sget-object v3, Landroidx/appcompat/view/menu/bg1;->u:Landroidx/appcompat/view/menu/bg1;

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/view/menu/dg1;->d(Landroidx/appcompat/view/menu/lz1$a;Landroidx/appcompat/view/menu/bg1;)V

    :goto_0
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lz1;->u()Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v2, Landroidx/appcompat/view/menu/lz1$a;->o:Landroidx/appcompat/view/menu/lz1$a;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lz1;->b()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/dg1;->c(Landroidx/appcompat/view/menu/lz1$a;I)V

    goto :goto_1

    :cond_2
    sget-object v1, Landroidx/appcompat/view/menu/lz1$a;->o:Landroidx/appcompat/view/menu/lz1$a;

    sget-object v2, Landroidx/appcompat/view/menu/bg1;->u:Landroidx/appcompat/view/menu/bg1;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/dg1;->d(Landroidx/appcompat/view/menu/lz1$a;Landroidx/appcompat/view/menu/bg1;)V

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rw1;->t0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/o82;->a0(Ljava/lang/String;)Landroidx/appcompat/view/menu/fh1;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroidx/appcompat/view/menu/o82;->Q(Ljava/lang/String;)Landroidx/appcompat/view/menu/lz1;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroidx/appcompat/view/menu/o82;->f(Ljava/lang/String;Landroidx/appcompat/view/menu/fh1;Landroidx/appcompat/view/menu/lz1;Landroidx/appcompat/view/menu/dg1;)Landroidx/appcompat/view/menu/fh1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fh1;->g()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p2, v2}, Landroidx/appcompat/view/menu/ps1$a;->K(Z)Landroidx/appcompat/view/menu/ps1$a;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fh1;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fh1;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/appcompat/view/menu/ps1$a;->n0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ps1$a;->U0()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "_npa"

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/ts1;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ts1;->Z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_a

    sget-object v1, Landroidx/appcompat/view/menu/lz1$a;->q:Landroidx/appcompat/view/menu/lz1$a;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/dg1;->a(Landroidx/appcompat/view/menu/lz1$a;)Landroidx/appcompat/view/menu/bg1;

    move-result-object v3

    sget-object v4, Landroidx/appcompat/view/menu/bg1;->n:Landroidx/appcompat/view/menu/bg1;

    if-ne v3, v4, :cond_c

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rw1;->q0()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_9

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v3, :cond_7

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ts1;->U()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    :cond_7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne p1, v3, :cond_8

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ts1;->U()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    sget-object p1, Landroidx/appcompat/view/menu/bg1;->q:Landroidx/appcompat/view/menu/bg1;

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/dg1;->d(Landroidx/appcompat/view/menu/lz1$a;Landroidx/appcompat/view/menu/bg1;)V

    goto :goto_5

    :cond_9
    :goto_3
    sget-object p1, Landroidx/appcompat/view/menu/bg1;->s:Landroidx/appcompat/view/menu/bg1;

    invoke-virtual {v0, v1, p1}, Landroidx/appcompat/view/menu/dg1;->d(Landroidx/appcompat/view/menu/lz1$a;Landroidx/appcompat/view/menu/bg1;)V

    goto :goto_5

    :cond_a
    invoke-static {}, Landroidx/appcompat/view/menu/na2;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    move-result-object v1

    sget-object v2, Landroidx/appcompat/view/menu/si1;->W0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroidx/appcompat/view/menu/o82;->a:Landroidx/appcompat/view/menu/rv1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rw1;->t0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/rv1;->J(Ljava/lang/String;)Landroidx/appcompat/view/menu/or1;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_b

    sget-object p1, Landroidx/appcompat/view/menu/lz1$a;->q:Landroidx/appcompat/view/menu/lz1$a;

    sget-object v1, Landroidx/appcompat/view/menu/bg1;->u:Landroidx/appcompat/view/menu/bg1;

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/view/menu/dg1;->d(Landroidx/appcompat/view/menu/lz1$a;Landroidx/appcompat/view/menu/bg1;)V

    goto :goto_4

    :cond_b
    iget-object v1, p0, Landroidx/appcompat/view/menu/o82;->a:Landroidx/appcompat/view/menu/rv1;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rw1;->t0()Ljava/lang/String;

    move-result-object p1

    sget-object v4, Landroidx/appcompat/view/menu/lz1$a;->q:Landroidx/appcompat/view/menu/lz1$a;

    invoke-virtual {v1, p1, v4}, Landroidx/appcompat/view/menu/rv1;->K(Ljava/lang/String;Landroidx/appcompat/view/menu/lz1$a;)Z

    move-result p1

    xor-int/2addr v2, p1

    sget-object p1, Landroidx/appcompat/view/menu/bg1;->o:Landroidx/appcompat/view/menu/bg1;

    invoke-virtual {v0, v4, p1}, Landroidx/appcompat/view/menu/dg1;->d(Landroidx/appcompat/view/menu/lz1$a;Landroidx/appcompat/view/menu/bg1;)V

    :goto_4
    invoke-static {}, Landroidx/appcompat/view/menu/ts1;->X()Landroidx/appcompat/view/menu/ts1$a;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/appcompat/view/menu/ts1$a;->u(Ljava/lang/String;)Landroidx/appcompat/view/menu/ts1$a;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroidx/appcompat/view/menu/ts1$a;->w(J)Landroidx/appcompat/view/menu/ts1$a;

    move-result-object p1

    int-to-long v1, v2

    invoke-virtual {p1, v1, v2}, Landroidx/appcompat/view/menu/ts1$a;->t(J)Landroidx/appcompat/view/menu/ts1$a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/q02;

    check-cast p1, Landroidx/appcompat/view/menu/ts1;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ps1$a;->B(Landroidx/appcompat/view/menu/ts1;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_c
    :goto_5
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/dg1;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/ps1$a;->f0(Ljava/lang/String;)Landroidx/appcompat/view/menu/ps1$a;

    :cond_d
    return-void
.end method

.method public final v0()Landroidx/appcompat/view/menu/pu1;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->d:Landroidx/appcompat/view/menu/pu1;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Network broadcast receiver not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final w0()Landroidx/appcompat/view/menu/c82;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->e:Landroidx/appcompat/view/menu/c82;

    invoke-static {v0}, Landroidx/appcompat/view/menu/o82;->j(Landroidx/appcompat/view/menu/m82;)Landroidx/appcompat/view/menu/m82;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/c82;

    return-object v0
.end method

.method public final x(Landroidx/appcompat/view/menu/v92;Landroidx/appcompat/view/menu/cb2;)V
    .locals 13

    const-string v0, "_id"

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    invoke-static {p2}, Landroidx/appcompat/view/menu/o82;->d0(Landroidx/appcompat/view/menu/cb2;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p2, Landroidx/appcompat/view/menu/cb2;->t:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/o82;->g(Landroidx/appcompat/view/menu/cb2;)Landroidx/appcompat/view/menu/rw1;

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    move-result-object v1

    iget-object v2, p1, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/appcompat/view/menu/x92;->q0(Ljava/lang/String;)I

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x18

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    iget-object v0, p1, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    invoke-static {v0, v3, v2}, Landroidx/appcompat/view/menu/x92;->I(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p1, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    move v8, p1

    goto :goto_0

    :cond_2
    move v8, v1

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    iget-object v3, p0, Landroidx/appcompat/view/menu/o82;->G:Landroidx/appcompat/view/menu/ba2;

    iget-object v4, p2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    const-string v6, "_ev"

    invoke-static/range {v3 .. v8}, Landroidx/appcompat/view/menu/x92;->Y(Landroidx/appcompat/view/menu/ba2;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    move-result-object v4

    iget-object v5, p1, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/v92;->d()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroidx/appcompat/view/menu/x92;->w(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    iget-object v0, p1, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->c0()Landroidx/appcompat/view/menu/qf1;

    invoke-static {v0, v3, v2}, Landroidx/appcompat/view/menu/x92;->I(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/v92;->d()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_4

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :cond_5
    move v12, v1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    iget-object v7, p0, Landroidx/appcompat/view/menu/o82;->G:Landroidx/appcompat/view/menu/ba2;

    iget-object v8, p2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    const-string v10, "_ev"

    invoke-static/range {v7 .. v12}, Landroidx/appcompat/view/menu/x92;->Y(Landroidx/appcompat/view/menu/ba2;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    move-result-object v1

    iget-object v2, p1, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/v92;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/x92;->A0(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    return-void

    :cond_7
    iget-object v2, p1, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    const-string v3, "_sid"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-wide v6, p1, Landroidx/appcompat/view/menu/v92;->o:J

    iget-object v9, p1, Landroidx/appcompat/view/menu/v92;->s:Ljava/lang/String;

    iget-object v2, p2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v2}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v4

    const-string v5, "_sno"

    invoke-virtual {v4, v2, v5}, Landroidx/appcompat/view/menu/lg1;->F0(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/z92;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v5, v4, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    instance-of v8, v5, Ljava/lang/Long;

    if-eqz v8, :cond_8

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_1

    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v5

    const-string v8, "Retrieved last session number from database does not contain a valid (long) value"

    iget-object v4, v4, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    invoke-virtual {v5, v8, v4}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v4

    const-string v5, "_s"

    invoke-virtual {v4, v2, v5}, Landroidx/appcompat/view/menu/lg1;->C0(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/gi1;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-wide v4, v2, Landroidx/appcompat/view/menu/gi1;->c:J

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v8, "Backfill the session number. Last used session number"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    const-wide/16 v4, 0x0

    :goto_1
    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    new-instance v2, Landroidx/appcompat/view/menu/v92;

    const-string v8, "_sno"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object v4, v2

    move-object v5, v8

    move-object v8, v10

    invoke-direct/range {v4 .. v9}, Landroidx/appcompat/view/menu/v92;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p2}, Landroidx/appcompat/view/menu/o82;->x(Landroidx/appcompat/view/menu/v92;Landroidx/appcompat/view/menu/cb2;)V

    :cond_b
    new-instance v2, Landroidx/appcompat/view/menu/z92;

    iget-object v4, p2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-static {v4}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    iget-object v4, p1, Landroidx/appcompat/view/menu/v92;->s:Ljava/lang/String;

    invoke-static {v4}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    iget-object v7, p1, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    iget-wide v8, p1, Landroidx/appcompat/view/menu/v92;->o:J

    move-object v4, v2

    move-object v10, v1

    invoke-direct/range {v4 .. v10}, Landroidx/appcompat/view/menu/z92;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v4

    iget-object v5, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v5

    iget-object v6, v2, Landroidx/appcompat/view/menu/z92;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/mt1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Setting user property"

    invoke-virtual {v4, v6, v5, v1}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lg1;->Q0()V

    :try_start_0
    iget-object v1, v2, Landroidx/appcompat/view/menu/z92;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    iget-object v4, p2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Landroidx/appcompat/view/menu/lg1;->F0(Ljava/lang/String;Ljava/lang/String;)Landroidx/appcompat/view/menu/z92;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, v2, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    iget-object v0, v0, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    iget-object v1, p2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    const-string v4, "_lair"

    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/view/menu/lg1;->L0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_c
    :goto_2
    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/o82;->g(Landroidx/appcompat/view/menu/cb2;)Landroidx/appcompat/view/menu/rw1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/appcompat/view/menu/lg1;->e0(Landroidx/appcompat/view/menu/z92;)Z

    move-result v0

    iget-object p1, p1, Landroidx/appcompat/view/menu/v92;->n:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->m0()Landroidx/appcompat/view/menu/i92;

    move-result-object p1

    iget-object v1, p2, Landroidx/appcompat/view/menu/cb2;->J:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/i92;->z(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p1

    iget-object v1, p2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/lg1;->D0(Ljava/lang/String;)Landroidx/appcompat/view/menu/rw1;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-virtual {p1, v3, v4}, Landroidx/appcompat/view/menu/rw1;->l0(J)V

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rw1;->s()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/lg1;->V(Landroidx/appcompat/view/menu/rw1;)V

    :cond_d
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/lg1;->T0()V

    if-nez v0, :cond_e

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string v0, "Too many unique user properties are set. Ignoring user property"

    iget-object v1, p0, Landroidx/appcompat/view/menu/o82;->l:Landroidx/appcompat/view/menu/cx1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/cx1;->D()Landroidx/appcompat/view/menu/mt1;

    move-result-object v1

    iget-object v3, v2, Landroidx/appcompat/view/menu/z92;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/mt1;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v2, Landroidx/appcompat/view/menu/z92;->e:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->n0()Landroidx/appcompat/view/menu/x92;

    iget-object v3, p0, Landroidx/appcompat/view/menu/o82;->G:Landroidx/appcompat/view/menu/ba2;

    iget-object v4, p2, Landroidx/appcompat/view/menu/cb2;->m:Ljava/lang/String;

    const/16 v5, 0x9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroidx/appcompat/view/menu/x92;->Y(Landroidx/appcompat/view/menu/ba2;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_e
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/lg1;->R0()V

    return-void

    :goto_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    throw p1
.end method

.method public final y(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->p:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/o82;->p:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/o82;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final z(Ljava/lang/String;ILjava/lang/Throwable;[BLjava/util/Map;)V
    .locals 6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->p0()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :try_start_0
    new-array p4, v0, [B

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_b

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "onConfigFetched. Response size"

    array-length v3, p4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lg1;->Q0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/lg1;->D0(Ljava/lang/String;)Landroidx/appcompat/view/menu/rw1;

    move-result-object v1

    const/16 v2, 0xc8

    const/16 v3, 0x130

    if-eq p2, v2, :cond_1

    const/16 v2, 0xcc

    if-eq p2, v2, :cond_1

    if-ne p2, v3, :cond_2

    :cond_1
    if-nez p3, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string p3, "App does not exist in onConfigFetched. appId"

    invoke-static {p1}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_9

    :catchall_1
    move-exception p1

    goto/16 :goto_a

    :cond_3
    const/16 v4, 0x194

    if-nez v2, :cond_7

    if-ne p2, v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object p4

    invoke-interface {p4}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide p4

    invoke-virtual {v1, p4, p5}, Landroidx/appcompat/view/menu/rw1;->b0(J)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p4

    invoke-virtual {p4, v1}, Landroidx/appcompat/view/menu/lg1;->V(Landroidx/appcompat/view/menu/rw1;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p4

    invoke-virtual {p4}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object p4

    const-string p5, "Fetching config failed. code, error"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, p5, v1, p3}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroidx/appcompat/view/menu/rv1;->T(Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    iget-object p1, p1, Landroidx/appcompat/view/menu/p62;->h:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object p3

    invoke-interface {p3}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide p3

    invoke-virtual {p1, p3, p4}, Landroidx/appcompat/view/menu/dv1;->b(J)V

    const/16 p1, 0x1f7

    if-eq p2, p1, :cond_5

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_6

    :cond_5
    iget-object p1, p0, Landroidx/appcompat/view/menu/o82;->i:Landroidx/appcompat/view/menu/p62;

    iget-object p1, p1, Landroidx/appcompat/view/menu/p62;->f:Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object p2

    invoke-interface {p2}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/view/menu/dv1;->b(J)V

    :cond_6
    invoke-direct {p0}, Landroidx/appcompat/view/menu/o82;->N()V

    goto/16 :goto_9

    :cond_7
    :goto_2
    const/4 p3, 0x0

    if-eqz p5, :cond_8

    const-string v2, "Last-Modified"

    invoke-interface {p5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_3

    :cond_8
    move-object v2, p3

    :goto_3
    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_4

    :cond_9
    move-object v2, p3

    :goto_4
    if-eqz p5, :cond_a

    const-string v5, "ETag"

    invoke-interface {p5, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    goto :goto_5

    :cond_a
    move-object p5, p3

    :goto_5
    if-eqz p5, :cond_b

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-interface {p5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    goto :goto_6

    :cond_b
    move-object p5, p3

    :goto_6
    if-eq p2, v4, :cond_d

    if-ne p2, v3, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object p3

    invoke-virtual {p3, p1, p4, v2, p5}, Landroidx/appcompat/view/menu/rv1;->H(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p3, :cond_e

    :try_start_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/lg1;->R0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o82;->t:Z

    invoke-direct {p0}, Landroidx/appcompat/view/menu/o82;->M()V

    return-void

    :cond_d
    :goto_7
    :try_start_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object p5

    invoke-virtual {p5, p1}, Landroidx/appcompat/view/menu/rv1;->L(Ljava/lang/String;)Landroidx/appcompat/view/menu/rr1;

    move-result-object p5

    if-nez p5, :cond_e

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->h0()Landroidx/appcompat/view/menu/rv1;

    move-result-object p5

    invoke-virtual {p5, p1, p3, p3, p3}, Landroidx/appcompat/view/menu/rv1;->H(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p3, :cond_e

    :try_start_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/lg1;->R0()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o82;->t:Z

    invoke-direct {p0}, Landroidx/appcompat/view/menu/o82;->M()V

    return-void

    :cond_e
    :try_start_5
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object p3

    invoke-interface {p3}, Landroidx/appcompat/view/menu/cc;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/view/menu/rw1;->A(J)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroidx/appcompat/view/menu/lg1;->V(Landroidx/appcompat/view/menu/rw1;)V

    if-ne p2, v4, :cond_f

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->M()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string p3, "Config not found. Using empty config. appId"

    invoke-virtual {p2, p3, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_8

    :cond_f
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object p1

    const-string p3, "Successfully fetched config. Got network response. code, size"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length p4, p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p3, p2, p4}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->g0()Landroidx/appcompat/view/menu/cu1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/cu1;->A()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-direct {p0}, Landroidx/appcompat/view/menu/o82;->O()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->t0()V

    goto :goto_9

    :cond_10
    invoke-direct {p0}, Landroidx/appcompat/view/menu/o82;->N()V

    :goto_9
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/lg1;->T0()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/lg1;->R0()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o82;->t:Z

    invoke-direct {p0}, Landroidx/appcompat/view/menu/o82;->M()V

    return-void

    :goto_a
    :try_start_7
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o82;->e0()Landroidx/appcompat/view/menu/lg1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/lg1;->R0()V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_b
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/o82;->t:Z

    invoke-direct {p0}, Landroidx/appcompat/view/menu/o82;->M()V

    throw p1
.end method

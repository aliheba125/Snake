.class public final Landroidx/appcompat/view/menu/p62;
.super Landroidx/appcompat/view/menu/m82;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/Map;

.field public final e:Landroidx/appcompat/view/menu/dv1;

.field public final f:Landroidx/appcompat/view/menu/dv1;

.field public final g:Landroidx/appcompat/view/menu/dv1;

.field public final h:Landroidx/appcompat/view/menu/dv1;

.field public final i:Landroidx/appcompat/view/menu/dv1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/o82;)V
    .locals 4

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/m82;-><init>(Landroidx/appcompat/view/menu/o82;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/p62;->d:Ljava/util/Map;

    new-instance p1, Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "last_delete_stale"

    const-wide/16 v2, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/appcompat/view/menu/dv1;-><init>(Landroidx/appcompat/view/menu/tu1;Ljava/lang/String;J)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/p62;->e:Landroidx/appcompat/view/menu/dv1;

    new-instance p1, Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "backoff"

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/appcompat/view/menu/dv1;-><init>(Landroidx/appcompat/view/menu/tu1;Ljava/lang/String;J)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/p62;->f:Landroidx/appcompat/view/menu/dv1;

    new-instance p1, Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "last_upload"

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/appcompat/view/menu/dv1;-><init>(Landroidx/appcompat/view/menu/tu1;Ljava/lang/String;J)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/p62;->g:Landroidx/appcompat/view/menu/dv1;

    new-instance p1, Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "last_upload_attempt"

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/appcompat/view/menu/dv1;-><init>(Landroidx/appcompat/view/menu/tu1;Ljava/lang/String;J)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/p62;->h:Landroidx/appcompat/view/menu/dv1;

    new-instance p1, Landroidx/appcompat/view/menu/dv1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "midnight_offset"

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/appcompat/view/menu/dv1;-><init>(Landroidx/appcompat/view/menu/tu1;Ljava/lang/String;J)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/p62;->i:Landroidx/appcompat/view/menu/dv1;

    return-void
.end method

.method private final y(Ljava/lang/String;)Landroid/util/Pair;
    .locals 11

    const-string v0, ""

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/view/menu/cc;->b()J

    move-result-wide v1

    iget-object v3, p0, Landroidx/appcompat/view/menu/p62;->d:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/n62;

    if-eqz v3, :cond_0

    iget-wide v4, v3, Landroidx/appcompat/view/menu/n62;->c:J

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    new-instance p1, Landroid/util/Pair;

    iget-object v0, v3, Landroidx/appcompat/view/menu/n62;->a:Ljava/lang/String;

    iget-boolean v1, v3, Landroidx/appcompat/view/menu/n62;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 v4, 0x1

    invoke-static {v4}, Landroidx/appcompat/view/menu/y1;->b(Z)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroidx/appcompat/view/menu/qf1;->C(Ljava/lang/String;)J

    move-result-wide v4

    add-long/2addr v4, v1

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v7

    sget-object v8, Landroidx/appcompat/view/menu/si1;->d:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v7, p1, v8}, Landroidx/appcompat/view/menu/qf1;->x(Ljava/lang/String;Landroidx/appcompat/view/menu/us1;)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_2

    :try_start_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroidx/appcompat/view/menu/y1;->a(Landroid/content/Context;)Landroidx/appcompat/view/menu/y1$a;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    if-eqz v3, :cond_1

    :try_start_2
    iget-wide v9, v3, Landroidx/appcompat/view/menu/n62;->c:J

    add-long/2addr v9, v7

    cmp-long v1, v1, v9

    if-gez v1, :cond_1

    new-instance v1, Landroid/util/Pair;

    iget-object v2, v3, Landroidx/appcompat/view/menu/n62;->a:Ljava/lang/String;

    iget-boolean v3, v3, Landroidx/appcompat/view/menu/n62;->b:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/appcompat/view/menu/y1;->a(Landroid/content/Context;)Landroidx/appcompat/view/menu/y1$a;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_3

    new-instance v1, Landroid/util/Pair;

    const-string v2, "00000000-0000-0000-0000-000000000000"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_3
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/y1$a;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Landroidx/appcompat/view/menu/n62;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/y1$a;->b()Z

    move-result v1

    invoke-direct {v3, v2, v1, v4, v5}, Landroidx/appcompat/view/menu/n62;-><init>(Ljava/lang/String;ZJ)V

    goto :goto_2

    :cond_4
    new-instance v3, Landroidx/appcompat/view/menu/n62;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/y1$a;->b()Z

    move-result v1

    invoke-direct {v3, v0, v1, v4, v5}, Landroidx/appcompat/view/menu/n62;-><init>(Ljava/lang/String;ZJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->F()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "Unable to get advertising id"

    invoke-virtual {v2, v3, v1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Landroidx/appcompat/view/menu/n62;

    invoke-direct {v3, v0, v6, v4, v5}, Landroidx/appcompat/view/menu/n62;-><init>(Ljava/lang/String;ZJ)V

    :goto_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/p62;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Landroidx/appcompat/view/menu/y1;->b(Z)V

    new-instance p1, Landroid/util/Pair;

    iget-object v0, v3, Landroidx/appcompat/view/menu/n62;->a:Ljava/lang/String;

    iget-boolean v1, v3, Landroidx/appcompat/view/menu/n62;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method


# virtual methods
.method public final A(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/p62;->y(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "00000000-0000-0000-0000-000000000000"

    :goto_0
    invoke-static {}, Landroidx/appcompat/view/menu/x92;->T0()Ljava/security/MessageDigest;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    const/4 p2, 0x1

    invoke-direct {v1, p2, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%032X"

    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic a()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Landroidx/appcompat/view/menu/cc;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Landroidx/appcompat/view/menu/mf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->d()Landroidx/appcompat/view/menu/mf1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic e()Landroidx/appcompat/view/menu/qf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Landroidx/appcompat/view/menu/ci1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->f()Landroidx/appcompat/view/menu/ci1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Landroidx/appcompat/view/menu/mt1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->g()Landroidx/appcompat/view/menu/mt1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Landroidx/appcompat/view/menu/jw1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->h()Landroidx/appcompat/view/menu/jw1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Landroidx/appcompat/view/menu/tu1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->i()Landroidx/appcompat/view/menu/tu1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Landroidx/appcompat/view/menu/x92;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->j()Landroidx/appcompat/view/menu/x92;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->k()V

    return-void
.end method

.method public final bridge synthetic l()Landroidx/appcompat/view/menu/pt1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    return-void
.end method

.method public final bridge synthetic o()Landroidx/appcompat/view/menu/i92;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/g82;->o()Landroidx/appcompat/view/menu/i92;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Landroidx/appcompat/view/menu/we2;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/g82;->p()Landroidx/appcompat/view/menu/we2;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Landroidx/appcompat/view/menu/lg1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Landroidx/appcompat/view/menu/rv1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/g82;->r()Landroidx/appcompat/view/menu/rv1;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Landroidx/appcompat/view/menu/p62;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/g82;->s()Landroidx/appcompat/view/menu/p62;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Landroidx/appcompat/view/menu/k82;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/g82;->t()Landroidx/appcompat/view/menu/k82;

    move-result-object v0

    return-object v0
.end method

.method public final x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final z(Ljava/lang/String;Landroidx/appcompat/view/menu/lz1;)Landroid/util/Pair;
    .locals 1

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/lz1;->x()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/p62;->y(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Landroid/util/Pair;

    const-string p2, ""

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.class public final Landroidx/appcompat/view/menu/k82;
.super Landroidx/appcompat/view/menu/g82;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/o82;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/g82;-><init>(Landroidx/appcompat/view/menu/o82;)V

    return-void
.end method

.method private final v(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g82;->r()Landroidx/appcompat/view/menu/rv1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/rv1;->Q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Landroidx/appcompat/view/menu/si1;->s:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p1, Landroidx/appcompat/view/menu/si1;->s:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {p1, v1}, Landroidx/appcompat/view/menu/us1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method


# virtual methods
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

.method public final u(Ljava/lang/String;)Landroidx/appcompat/view/menu/q82;
    .locals 5

    invoke-static {}, Landroidx/appcompat/view/menu/wd2;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/si1;->A0:Landroidx/appcompat/view/menu/us1;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/qf1;->s(Landroidx/appcompat/view/menu/us1;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "sgtm feature flag enabled."

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/lg1;->D0(Ljava/lang/String;)Landroidx/appcompat/view/menu/rw1;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/q82;

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/k82;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/q82;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/rw1;->t()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v3, "sgtm upload enabled in manifest."

    invoke-virtual {v1, v3}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g82;->r()Landroidx/appcompat/view/menu/rv1;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/rw1;->t0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/rv1;->L(Ljava/lang/String;)Landroidx/appcompat/view/menu/rr1;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/rr1;->S()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/rr1;->R()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Y"

    goto :goto_0

    :cond_4
    const-string v3, "N"

    :goto_0
    const-string v4, "sgtm configured with upload_url, server_info"

    invoke-virtual {v2, v4, v1, v3}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Landroidx/appcompat/view/menu/q82;

    invoke-direct {v2, v1}, Landroidx/appcompat/view/menu/q82;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "x-google-sgtm-server-info"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroidx/appcompat/view/menu/q82;

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/menu/q82;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_6

    return-object v2

    :cond_6
    new-instance v0, Landroidx/appcompat/view/menu/q82;

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/k82;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/q82;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

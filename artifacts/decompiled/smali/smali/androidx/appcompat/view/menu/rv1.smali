.class public final Landroidx/appcompat/view/menu/rv1;
.super Landroidx/appcompat/view/menu/m82;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/wf1;


# instance fields
.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/Map;

.field public final h:Ljava/util/Map;

.field public final i:Ljava/util/Map;

.field public final j:Landroidx/appcompat/view/menu/pa0;

.field public final k:Landroidx/appcompat/view/menu/hf2;

.field public final l:Ljava/util/Map;

.field public final m:Ljava/util/Map;

.field public final n:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/o82;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/m82;-><init>(Landroidx/appcompat/view/menu/o82;)V

    new-instance p1, Landroidx/appcompat/view/menu/o4;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/o4;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/rv1;->d:Ljava/util/Map;

    new-instance p1, Landroidx/appcompat/view/menu/o4;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/o4;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/rv1;->e:Ljava/util/Map;

    new-instance p1, Landroidx/appcompat/view/menu/o4;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/o4;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/rv1;->f:Ljava/util/Map;

    new-instance p1, Landroidx/appcompat/view/menu/o4;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/o4;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/rv1;->g:Ljava/util/Map;

    new-instance p1, Landroidx/appcompat/view/menu/o4;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/o4;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/rv1;->h:Ljava/util/Map;

    new-instance p1, Landroidx/appcompat/view/menu/o4;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/o4;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/rv1;->l:Ljava/util/Map;

    new-instance p1, Landroidx/appcompat/view/menu/o4;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/o4;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/rv1;->m:Ljava/util/Map;

    new-instance p1, Landroidx/appcompat/view/menu/o4;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/o4;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/rv1;->n:Ljava/util/Map;

    new-instance p1, Landroidx/appcompat/view/menu/o4;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/o4;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/rv1;->i:Ljava/util/Map;

    new-instance p1, Landroidx/appcompat/view/menu/dw1;

    const/16 v0, 0x14

    invoke-direct {p1, p0, v0}, Landroidx/appcompat/view/menu/dw1;-><init>(Landroidx/appcompat/view/menu/rv1;I)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/rv1;->j:Landroidx/appcompat/view/menu/pa0;

    new-instance p1, Landroidx/appcompat/view/menu/bw1;

    invoke-direct {p1, p0}, Landroidx/appcompat/view/menu/bw1;-><init>(Landroidx/appcompat/view/menu/rv1;)V

    iput-object p1, p0, Landroidx/appcompat/view/menu/rv1;->k:Landroidx/appcompat/view/menu/hf2;

    return-void
.end method

.method public static B(Landroidx/appcompat/view/menu/or1$e;)Landroidx/appcompat/view/menu/lz1$a;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/fw1;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/appcompat/view/menu/lz1$a;->q:Landroidx/appcompat/view/menu/lz1$a;

    return-object p0

    :cond_1
    sget-object p0, Landroidx/appcompat/view/menu/lz1$a;->p:Landroidx/appcompat/view/menu/lz1$a;

    return-object p0

    :cond_2
    sget-object p0, Landroidx/appcompat/view/menu/lz1$a;->o:Landroidx/appcompat/view/menu/lz1$a;

    return-object p0

    :cond_3
    sget-object p0, Landroidx/appcompat/view/menu/lz1$a;->n:Landroidx/appcompat/view/menu/lz1$a;

    return-object p0
.end method

.method public static D(Landroidx/appcompat/view/menu/rr1;)Ljava/util/Map;
    .locals 3

    new-instance v0, Landroidx/appcompat/view/menu/o4;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/o4;-><init>()V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/rr1;->X()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/ur1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ur1;->H()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ur1;->I()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static bridge synthetic E(Landroidx/appcompat/view/menu/rv1;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/view/menu/rv1;->d:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic z(Landroidx/appcompat/view/menu/rv1;Ljava/lang/String;)Landroidx/appcompat/view/menu/lh1;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m82;->u()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->W(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/rr1;

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rv1;->G(Ljava/lang/String;Landroidx/appcompat/view/menu/rr1;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->g0(Ljava/lang/String;)V

    :goto_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/rv1;->j:Landroidx/appcompat/view/menu/pa0;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/pa0;->h()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/view/menu/lh1;

    return-object p0
.end method


# virtual methods
.method public final A(Ljava/lang/String;[B)Landroidx/appcompat/view/menu/rr1;
    .locals 7

    const-string v0, "Unable to merge remote config. appId"

    if-nez p2, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/rr1;->P()Landroidx/appcompat/view/menu/rr1;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    invoke-static {}, Landroidx/appcompat/view/menu/rr1;->N()Landroidx/appcompat/view/menu/rr1$a;

    move-result-object v1

    invoke-static {v1, p2}, Landroidx/appcompat/view/menu/i92;->G(Landroidx/appcompat/view/menu/c42;[B)Landroidx/appcompat/view/menu/c42;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/rr1$a;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/q02;

    check-cast p2, Landroidx/appcompat/view/menu/rr1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Parsed config. version, gmp_app_id"

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/rr1;->b0()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/rr1;->L()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    goto :goto_2

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/rr1;->a0()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/rr1;->Q()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {v1, v2, v3, v4}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/appcompat/view/menu/s12; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    invoke-static {p1}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1, p2}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Landroidx/appcompat/view/menu/rr1;->P()Landroidx/appcompat/view/menu/rr1;

    move-result-object p1

    return-object p1

    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    invoke-static {p1}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1, p2}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Landroidx/appcompat/view/menu/rr1;->P()Landroidx/appcompat/view/menu/rr1;

    move-result-object p1

    return-object p1
.end method

.method public final C(Ljava/lang/String;Landroidx/appcompat/view/menu/lz1$a;)Landroidx/appcompat/view/menu/lz1$a;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->g0(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->J(Ljava/lang/String;)Landroidx/appcompat/view/menu/or1;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/or1;->K()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/or1$c;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/or1$c;->I()Landroidx/appcompat/view/menu/or1$e;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/rv1;->B(Landroidx/appcompat/view/menu/or1$e;)Landroidx/appcompat/view/menu/lz1$a;

    move-result-object v2

    if-ne p2, v2, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/or1$c;->H()Landroidx/appcompat/view/menu/or1$e;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/rv1;->B(Landroidx/appcompat/view/menu/or1$e;)Landroidx/appcompat/view/menu/lz1$a;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method public final F(Ljava/lang/String;Landroidx/appcompat/view/menu/rr1$a;)V
    .locals 9

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Landroidx/appcompat/view/menu/o4;

    invoke-direct {v1}, Landroidx/appcompat/view/menu/o4;-><init>()V

    new-instance v2, Landroidx/appcompat/view/menu/o4;

    invoke-direct {v2}, Landroidx/appcompat/view/menu/o4;-><init>()V

    new-instance v3, Landroidx/appcompat/view/menu/o4;

    invoke-direct {v3}, Landroidx/appcompat/view/menu/o4;-><init>()V

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/rr1$a;->x()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/pr1;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/pr1;->H()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p2}, Landroidx/appcompat/view/menu/rr1$a;->r()I

    move-result v5

    if-ge v4, v5, :cond_8

    invoke-virtual {p2, v4}, Landroidx/appcompat/view/menu/rr1$a;->s(I)Landroidx/appcompat/view/menu/qr1;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/q02;->x()Landroidx/appcompat/view/menu/q02$b;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/qr1$a;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/qr1$a;->t()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v5

    const-string v6, "EventConfig contained null event name"

    invoke-virtual {v5, v6}, Landroidx/appcompat/view/menu/st1;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/qr1$a;->t()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/qr1$a;->t()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroidx/appcompat/view/menu/nz1;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v5, v7}, Landroidx/appcompat/view/menu/qr1$a;->s(Ljava/lang/String;)Landroidx/appcompat/view/menu/qr1$a;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Landroidx/appcompat/view/menu/rr1$a;->t(ILandroidx/appcompat/view/menu/qr1$a;)Landroidx/appcompat/view/menu/rr1$a;

    :cond_2
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/qr1$a;->w()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/qr1$a;->u()Z

    move-result v7

    if-eqz v7, :cond_3

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/qr1$a;->x()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/qr1$a;->v()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/qr1$a;->t()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/qr1$a;->y()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/qr1$a;->r()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_6

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/qr1$a;->r()I

    move-result v6

    const v7, 0xffff

    if-le v6, v7, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v5}, Landroidx/appcompat/view/menu/qr1$a;->t()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/qr1$a;->r()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v6

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v6

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/qr1$a;->t()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/qr1$a;->r()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v8, "Invalid sampling rate. Event name, sample rate"

    invoke-virtual {v6, v8, v7, v5}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_8
    iget-object p2, p0, Landroidx/appcompat/view/menu/rv1;->e:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Landroidx/appcompat/view/menu/rv1;->f:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Landroidx/appcompat/view/menu/rv1;->g:Ljava/util/Map;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Landroidx/appcompat/view/menu/rv1;->i:Ljava/util/Map;

    invoke-interface {p2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final G(Ljava/lang/String;Landroidx/appcompat/view/menu/rr1;)V
    .locals 3

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/rr1;->j()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Landroidx/appcompat/view/menu/rv1;->j:Landroidx/appcompat/view/menu/pa0;

    invoke-virtual {p2, p1}, Landroidx/appcompat/view/menu/pa0;->e(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/rr1;->j()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "EES programs found"

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/rr1;->W()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/view/menu/jt1;

    :try_start_0
    new-instance v0, Landroidx/appcompat/view/menu/lh1;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/lh1;-><init>()V

    const-string v1, "internal.remoteConfig"

    new-instance v2, Landroidx/appcompat/view/menu/tv1;

    invoke-direct {v2, p0, p1}, Landroidx/appcompat/view/menu/tv1;-><init>(Landroidx/appcompat/view/menu/rv1;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/lh1;->c(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    const-string v1, "internal.appMetadata"

    new-instance v2, Landroidx/appcompat/view/menu/zv1;

    invoke-direct {v2, p0, p1}, Landroidx/appcompat/view/menu/zv1;-><init>(Landroidx/appcompat/view/menu/rv1;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/lh1;->c(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    const-string v1, "internal.logger"

    new-instance v2, Landroidx/appcompat/view/menu/xv1;

    invoke-direct {v2, p0}, Landroidx/appcompat/view/menu/xv1;-><init>(Landroidx/appcompat/view/menu/rv1;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/menu/lh1;->c(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, p2}, Landroidx/appcompat/view/menu/lh1;->b(Landroidx/appcompat/view/menu/jt1;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/rv1;->j:Landroidx/appcompat/view/menu/pa0;

    invoke-virtual {v1, p1, v0}, Landroidx/appcompat/view/menu/pa0;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v0

    const-string v1, "EES program loaded for appId, activities"

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/jt1;->G()Landroidx/appcompat/view/menu/ht1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ht1;->j()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/jt1;->G()Landroidx/appcompat/view/menu/ht1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/ht1;->I()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/it1;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->K()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "EES program activity"

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/it1;->H()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroidx/appcompat/view/menu/pk1; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string v0, "Failed to load EES program. appId"

    invoke-virtual {p2, v0, p1}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final H(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m82;->u()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/rv1;->A(Ljava/lang/String;[B)Landroidx/appcompat/view/menu/rr1;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02;->x()Landroidx/appcompat/view/menu/q02$b;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/rr1$a;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rv1;->F(Ljava/lang/String;Landroidx/appcompat/view/menu/rr1$a;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/q02;

    check-cast v1, Landroidx/appcompat/view/menu/rr1;

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/view/menu/rv1;->G(Ljava/lang/String;Landroidx/appcompat/view/menu/rr1;)V

    iget-object v1, p0, Landroidx/appcompat/view/menu/rv1;->h:Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/q02;

    check-cast v2, Landroidx/appcompat/view/menu/rr1;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/rv1;->l:Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/rr1$a;->v()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/rv1;->m:Ljava/util/Map;

    invoke-interface {v1, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/rv1;->n:Ljava/util/Map;

    invoke-interface {v1, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/rv1;->d:Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/q02;

    check-cast v2, Landroidx/appcompat/view/menu/rr1;

    invoke-static {v2}, Landroidx/appcompat/view/menu/rv1;->D(Landroidx/appcompat/view/menu/rr1;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/rr1$a;->w()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/view/menu/lg1;->Z(Ljava/lang/String;Ljava/util/List;)V

    :try_start_0
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/rr1$a;->u()Landroidx/appcompat/view/menu/rr1$a;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/q02;

    check-cast v1, Landroidx/appcompat/view/menu/rr1;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ax1;->h()[B

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v2

    const-string v3, "Unable to serialize reduced-size config. Storing full config instead. appId"

    invoke-static {p1}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v1

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/m82;->u()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "remote_config"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string p2, "config_last_modified_time"

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "e_tag"

    invoke-virtual {v2, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lg1;->B()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "apps"

    const-string p4, "app_id = ?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p3, v2, p4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    int-to-long p2, p2

    const-wide/16 v2, 0x0

    cmp-long p2, p2, v2

    if-nez p2, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p2

    const-string p3, "Failed to update remote config (got 0). appId"

    invoke-static {p1}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroidx/appcompat/view/menu/st1;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/pt1;->G()Landroidx/appcompat/view/menu/st1;

    move-result-object p3

    const-string p4, "Error storing remote config. appId"

    invoke-static {p1}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p3, p4, v1, p2}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_1
    iget-object p2, p0, Landroidx/appcompat/view/menu/rv1;->h:Ljava/util/Map;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object p3

    check-cast p3, Landroidx/appcompat/view/menu/q02;

    check-cast p3, Landroidx/appcompat/view/menu/rr1;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public final I(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->g0(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public final J(Ljava/lang/String;)Landroidx/appcompat/view/menu/or1;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->g0(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->L(Ljava/lang/String;)Landroidx/appcompat/view/menu/rr1;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rr1;->Z()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rr1;->M()Landroidx/appcompat/view/menu/or1;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final K(Ljava/lang/String;Landroidx/appcompat/view/menu/lz1$a;)Z
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->g0(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->J(Ljava/lang/String;)Landroidx/appcompat/view/menu/or1;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/or1;->J()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/or1$b;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/or1$b;->I()Landroidx/appcompat/view/menu/or1$e;

    move-result-object v2

    invoke-static {v2}, Landroidx/appcompat/view/menu/rv1;->B(Landroidx/appcompat/view/menu/or1$e;)Landroidx/appcompat/view/menu/lz1$a;

    move-result-object v2

    if-ne p2, v2, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/or1$b;->H()Landroidx/appcompat/view/menu/or1$d;

    move-result-object p1

    sget-object p2, Landroidx/appcompat/view/menu/or1$d;->o:Landroidx/appcompat/view/menu/or1$d;

    if-ne p1, p2, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public final L(Ljava/lang/String;)Landroidx/appcompat/view/menu/rr1;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m82;->u()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->g0(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/rr1;

    return-object p1
.end method

.method public final M(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->g0(Ljava/lang/String;)V

    const-string v0, "ecommerce_purchase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "purchase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "refund"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public final N(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->n:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final O(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->g0(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->X(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroidx/appcompat/view/menu/x92;->H0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->Z(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroidx/appcompat/view/menu/x92;->J0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_3
    return v0
.end method

.method public final P(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final Q(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->g0(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final R(Ljava/lang/String;)Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->g0(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    return-object p1
.end method

.method public final S(Ljava/lang/String;)Ljava/util/SortedSet;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->g0(Ljava/lang/String;)V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->J(Ljava/lang/String;)Landroidx/appcompat/view/menu/or1;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/or1;->I()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/or1$f;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/or1$f;->H()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final T(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->m:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final U(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final V(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->L(Ljava/lang/String;)Landroidx/appcompat/view/menu/rr1;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rr1;->Y()Z

    move-result p1

    return p1
.end method

.method public final W(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/view/menu/rr1;

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/rr1;->j()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final X(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_internal"

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rv1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final Y(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->g0(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->J(Ljava/lang/String;)Landroidx/appcompat/view/menu/or1;

    move-result-object p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/or1;->M()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/or1;->L()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public final Z(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "measurement.upload.blacklist_public"

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rv1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic a()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final a0(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->g0(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const-string v0, "app_instance_id"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic b()Landroidx/appcompat/view/menu/cc;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->b()Landroidx/appcompat/view/menu/cc;

    move-result-object v0

    return-object v0
.end method

.method public final b0(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->g0(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const-string v1, "device_model"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const-string v0, "device_info"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->g0(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c0(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->g0(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const-string v0, "enhanced_user_id"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic d()Landroidx/appcompat/view/menu/mf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->d()Landroidx/appcompat/view/menu/mf1;

    move-result-object v0

    return-object v0
.end method

.method public final d0(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->g0(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const-string v0, "google_signals"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic e()Landroidx/appcompat/view/menu/qf1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->e()Landroidx/appcompat/view/menu/qf1;

    move-result-object v0

    return-object v0
.end method

.method public final e0(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->g0(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const-string v1, "os_version"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const-string v0, "device_info"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic f()Landroidx/appcompat/view/menu/ci1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->f()Landroidx/appcompat/view/menu/ci1;

    move-result-object v0

    return-object v0
.end method

.method public final f0(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/rv1;->g0(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const-string v0, "user_id"

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final bridge synthetic g()Landroidx/appcompat/view/menu/mt1;
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/view/menu/fz1;->g()Landroidx/appcompat/view/menu/mt1;

    move-result-object v0

    return-object v0
.end method

.method public final g0(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m82;->u()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->n()V

    invoke-static {p1}, Landroidx/appcompat/view/menu/mj0;->e(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g82;->q()Landroidx/appcompat/view/menu/lg1;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/lg1;->E0(Ljava/lang/String;)Landroidx/appcompat/view/menu/pg1;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->d:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->f:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->e:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->g:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->h:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->l:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->m:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->n:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/rv1;->i:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    iget-object v1, v0, Landroidx/appcompat/view/menu/pg1;->a:[B

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/view/menu/rv1;->A(Ljava/lang/String;[B)Landroidx/appcompat/view/menu/rr1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/q02;->x()Landroidx/appcompat/view/menu/q02$b;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/rr1$a;

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/view/menu/rv1;->F(Ljava/lang/String;Landroidx/appcompat/view/menu/rr1$a;)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/rv1;->d:Ljava/util/Map;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/q02;

    check-cast v3, Landroidx/appcompat/view/menu/rr1;

    invoke-static {v3}, Landroidx/appcompat/view/menu/rv1;->D(Landroidx/appcompat/view/menu/rr1;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroidx/appcompat/view/menu/rv1;->h:Ljava/util/Map;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/q02;

    check-cast v3, Landroidx/appcompat/view/menu/rr1;

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/q02$b;->j()Landroidx/appcompat/view/menu/w32;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/q02;

    check-cast v2, Landroidx/appcompat/view/menu/rr1;

    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/view/menu/rv1;->G(Ljava/lang/String;Landroidx/appcompat/view/menu/rr1;)V

    iget-object v2, p0, Landroidx/appcompat/view/menu/rv1;->l:Ljava/util/Map;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/rr1$a;->v()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/rv1;->m:Ljava/util/Map;

    iget-object v2, v0, Landroidx/appcompat/view/menu/pg1;->b:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/appcompat/view/menu/rv1;->n:Ljava/util/Map;

    iget-object v0, v0, Landroidx/appcompat/view/menu/pg1;->c:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
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

.method public final y(Ljava/lang/String;)J
    .locals 3

    const-string v0, "measurement.account.time_zone_offset_minutes"

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/rv1;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/fz1;->l()Landroidx/appcompat/view/menu/pt1;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/pt1;->L()Landroidx/appcompat/view/menu/st1;

    move-result-object v1

    const-string v2, "Unable to parse timezone offset. appId"

    invoke-static {p1}, Landroidx/appcompat/view/menu/pt1;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Landroidx/appcompat/view/menu/st1;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.class public final Landroidx/appcompat/view/menu/ck$g;
.super Landroidx/appcompat/view/menu/gw0$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ck;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final d:Ljava/util/List;

.field public final e:Landroidx/appcompat/view/menu/gw0$d;

.field public final f:Landroidx/appcompat/view/menu/gw0$d;

.field public final g:Landroidx/appcompat/view/menu/aw;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/util/ArrayList;

.field public final j:Ljava/util/ArrayList;

.field public final k:Landroidx/appcompat/view/menu/o4;

.field public final l:Ljava/util/ArrayList;

.field public final m:Ljava/util/ArrayList;

.field public final n:Landroidx/appcompat/view/menu/o4;

.field public final o:Landroidx/appcompat/view/menu/o4;

.field public final p:Z

.field public final q:Landroidx/appcompat/view/menu/ca;

.field public r:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/aw;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/appcompat/view/menu/o4;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroidx/appcompat/view/menu/o4;Landroidx/appcompat/view/menu/o4;Z)V
    .locals 1

    const-string v0, "transitionInfos"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionImpl"

    invoke-static {p4, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedElementFirstOutViews"

    invoke-static {p6, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedElementLastInViews"

    invoke-static {p7, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedElementNameMapping"

    invoke-static {p8, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "enteringNames"

    invoke-static {p9, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exitingNames"

    invoke-static {p10, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firstOutViews"

    invoke-static {p11, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastInViews"

    invoke-static {p12, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/appcompat/view/menu/gw0$b;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ck$g;->d:Ljava/util/List;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ck$g;->e:Landroidx/appcompat/view/menu/gw0$d;

    iput-object p3, p0, Landroidx/appcompat/view/menu/ck$g;->f:Landroidx/appcompat/view/menu/gw0$d;

    iput-object p4, p0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    iput-object p5, p0, Landroidx/appcompat/view/menu/ck$g;->h:Ljava/lang/Object;

    iput-object p6, p0, Landroidx/appcompat/view/menu/ck$g;->i:Ljava/util/ArrayList;

    iput-object p7, p0, Landroidx/appcompat/view/menu/ck$g;->j:Ljava/util/ArrayList;

    iput-object p8, p0, Landroidx/appcompat/view/menu/ck$g;->k:Landroidx/appcompat/view/menu/o4;

    iput-object p9, p0, Landroidx/appcompat/view/menu/ck$g;->l:Ljava/util/ArrayList;

    iput-object p10, p0, Landroidx/appcompat/view/menu/ck$g;->m:Ljava/util/ArrayList;

    iput-object p11, p0, Landroidx/appcompat/view/menu/ck$g;->n:Landroidx/appcompat/view/menu/o4;

    iput-object p12, p0, Landroidx/appcompat/view/menu/ck$g;->o:Landroidx/appcompat/view/menu/o4;

    iput-boolean p13, p0, Landroidx/appcompat/view/menu/ck$g;->p:Z

    new-instance p1, Landroidx/appcompat/view/menu/ca;

    invoke-direct {p1}, Landroidx/appcompat/view/menu/ca;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ck$g;->q:Landroidx/appcompat/view/menu/ca;

    return-void
.end method

.method public static final A(Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/ck$g;)V
    .locals 2

    const-string v0, "$operation"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transition for operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has completed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/gw0$d;->f(Landroidx/appcompat/view/menu/gw0$b;)V

    return-void
.end method

.method public static synthetic h(Landroidx/appcompat/view/menu/bo0;)V
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/ck$g;->z(Landroidx/appcompat/view/menu/bo0;)V

    return-void
.end method

.method public static synthetic i(Landroidx/appcompat/view/menu/aw;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/ck$g;->q(Landroidx/appcompat/view/menu/aw;Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic j(Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/ck$g;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/ck$g;->y(Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/ck$g;)V

    return-void
.end method

.method public static synthetic k(Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/ck$g;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/appcompat/view/menu/ck$g;->p(Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/ck$g;)V

    return-void
.end method

.method public static synthetic l(Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0}, Landroidx/appcompat/view/menu/ck$g;->r(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic m(Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/ck$g;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/appcompat/view/menu/ck$g;->A(Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/ck$g;)V

    return-void
.end method

.method public static final p(Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/ck$g;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object p1

    iget-boolean v0, p2, Landroidx/appcompat/view/menu/ck$g;->p:Z

    iget-object p2, p2, Landroidx/appcompat/view/menu/ck$g;->o:Landroidx/appcompat/view/menu/o4;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Landroidx/appcompat/view/menu/yv;->a(Landroidx/appcompat/view/menu/av;Landroidx/appcompat/view/menu/av;ZLandroidx/appcompat/view/menu/o4;Z)V

    return-void
.end method

.method public static final q(Landroidx/appcompat/view/menu/aw;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    const-string v0, "$impl"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$lastInEpicenterRect"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/view/menu/aw;->k(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static final r(Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "$transitioningViews"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/yv;->d(Ljava/util/List;I)V

    return-void
.end method

.method public static final y(Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/ck$g;)V
    .locals 2

    const-string v0, "$operation"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transition for operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has completed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/gw0$d;->f(Landroidx/appcompat/view/menu/gw0$b;)V

    return-void
.end method

.method public static final z(Landroidx/appcompat/view/menu/bo0;)V
    .locals 1

    const-string v0, "$seekCancelLambda"

    invoke-static {p0, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/appcompat/view/menu/bo0;->m:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/view/menu/dw;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/appcompat/view/menu/dw;->d()Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final B(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/dw;)V
    .locals 8

    const/4 v0, 0x4

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/yv;->d(Ljava/util/List;I)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ck$g;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/aw;->q(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, " Name: "

    const-string v3, "View: "

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "sharedElementFirstOutViews"

    invoke-static {v1, v4}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroidx/appcompat/view/menu/m51;->F(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v4, "sharedElementLastInViews"

    invoke-static {v1, v4}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/View;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroidx/appcompat/view/menu/m51;->F(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Landroidx/appcompat/view/menu/dw;->d()Ljava/lang/Object;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    iget-object v4, p0, Landroidx/appcompat/view/menu/ck$g;->i:Ljava/util/ArrayList;

    iget-object v5, p0, Landroidx/appcompat/view/menu/ck$g;->j:Ljava/util/ArrayList;

    iget-object v7, p0, Landroidx/appcompat/view/menu/ck$g;->k:Landroidx/appcompat/view/menu/o4;

    move-object v3, p2

    invoke-virtual/range {v2 .. v7}, Landroidx/appcompat/view/menu/aw;->y(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/yv;->d(Ljava/util/List;I)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    iget-object p2, p0, Landroidx/appcompat/view/menu/ck$g;->h:Ljava/lang/Object;

    iget-object p3, p0, Landroidx/appcompat/view/menu/ck$g;->i:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, p3, v0}, Landroidx/appcompat/view/menu/aw;->A(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final C(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/ck$g;->r:Ljava/lang/Object;

    return-void
.end method

.method public b()Z
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/aw;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->d:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/ck$h;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_3

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ck$h;->f()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ck$h;->f()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroidx/appcompat/view/menu/aw;->n(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->h:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    invoke-virtual {v1, v0}, Landroidx/appcompat/view/menu/aw;->n(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public c(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/ck$g;->q:Landroidx/appcompat/view/menu/ca;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/ca;->a()V

    return-void
.end method

.method public d(Landroid/view/ViewGroup;)V
    .locals 10

    const-string v0, "container"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->d:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/view/menu/ck$h;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object v3

    invoke-static {v1}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SpecialEffectsController: Container "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " has not been laid out. Completing operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroidx/appcompat/view/menu/gw0$d;->f(Landroidx/appcompat/view/menu/gw0$b;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->r:Ljava/lang/Object;

    const-string v2, " to "

    if-eqz v0, :cond_3

    iget-object p1, p0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    invoke-static {v0}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/aw;->c(Ljava/lang/Object;)V

    invoke-static {v1}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ending execution of operations from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->e:Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->f:Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->f:Landroidx/appcompat/view/menu/gw0$d;

    iget-object v3, p0, Landroidx/appcompat/view/menu/ck$g;->e:Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {p0, p1, v0, v3}, Landroidx/appcompat/view/menu/ck$g;->o(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/gw0$d;)Landroidx/appcompat/view/menu/lh0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lh0;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/lh0;->b()Ljava/lang/Object;

    move-result-object v0

    iget-object v4, p0, Landroidx/appcompat/view/menu/ck$g;->d:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Landroidx/appcompat/view/menu/qc;->j(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/appcompat/view/menu/ck$h;

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/gw0$d;

    iget-object v6, p0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v7

    iget-object v8, p0, Landroidx/appcompat/view/menu/ck$g;->q:Landroidx/appcompat/view/menu/ca;

    new-instance v9, Landroidx/appcompat/view/menu/dk;

    invoke-direct {v9, v5, p0}, Landroidx/appcompat/view/menu/dk;-><init>(Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/ck$g;)V

    invoke-virtual {v6, v7, v0, v8, v9}, Landroidx/appcompat/view/menu/aw;->w(Landroidx/appcompat/view/menu/av;Ljava/lang/Object;Landroidx/appcompat/view/menu/ca;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    new-instance v4, Landroidx/appcompat/view/menu/ck$g$a;

    invoke-direct {v4, p0, p1, v0}, Landroidx/appcompat/view/menu/ck$g$a;-><init>(Landroidx/appcompat/view/menu/ck$g;Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-virtual {p0, v3, p1, v4}, Landroidx/appcompat/view/menu/ck$g;->B(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/dw;)V

    invoke-static {v1}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Completed executing operations from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->e:Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->f:Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_3
    return-void
.end method

.method public e(Landroidx/appcompat/view/menu/h7;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/appcompat/view/menu/ck$g;->r:Ljava/lang/Object;

    if-eqz p2, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/h7;->a()F

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroidx/appcompat/view/menu/aw;->t(Ljava/lang/Object;F)V

    :cond_0
    return-void
.end method

.method public f(Landroid/view/ViewGroup;)V
    .locals 10

    const-string v0, "container"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->d:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/ck$h;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SpecialEffectsController: Container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has not been laid out. Skipping onStart for operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ck$g;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->h:Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ck$g;->b()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring shared elements transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ck$g;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " between "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ck$g;->e:Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ck$g;->f:Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " as neither fragment has set a Transition. In order to run a SharedElementTransition, you must also set either an enter or exit transition on a fragment involved in the transaction. The sharedElementTransition will run after the back gesture has been committed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ck$g;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ck$g;->x()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroidx/appcompat/view/menu/bo0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/bo0;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/ck$g;->f:Landroidx/appcompat/view/menu/gw0$d;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ck$g;->e:Landroidx/appcompat/view/menu/gw0$d;

    invoke-virtual {p0, p1, v1, v2}, Landroidx/appcompat/view/menu/ck$g;->o(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/gw0$d;)Landroidx/appcompat/view/menu/lh0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lh0;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/lh0;->b()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Landroidx/appcompat/view/menu/ck$g;->d:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Landroidx/appcompat/view/menu/qc;->j(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/view/menu/ck$h;

    invoke-virtual {v5}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/view/menu/gw0$d;

    new-instance v7, Landroidx/appcompat/view/menu/ek;

    invoke-direct {v7, v0}, Landroidx/appcompat/view/menu/ek;-><init>(Landroidx/appcompat/view/menu/bo0;)V

    iget-object v4, p0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v5

    iget-object v6, p0, Landroidx/appcompat/view/menu/ck$g;->q:Landroidx/appcompat/view/menu/ca;

    new-instance v8, Landroidx/appcompat/view/menu/fk;

    invoke-direct {v8, v3, p0}, Landroidx/appcompat/view/menu/fk;-><init>(Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/ck$g;)V

    move-object v3, v4

    move-object v4, v5

    move-object v5, v1

    invoke-virtual/range {v3 .. v8}, Landroidx/appcompat/view/menu/aw;->x(Landroidx/appcompat/view/menu/av;Ljava/lang/Object;Landroidx/appcompat/view/menu/ca;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    new-instance v3, Landroidx/appcompat/view/menu/ck$g$b;

    invoke-direct {v3, p0, p1, v1, v0}, Landroidx/appcompat/view/menu/ck$g$b;-><init>(Landroidx/appcompat/view/menu/ck$g;Landroid/view/ViewGroup;Ljava/lang/Object;Landroidx/appcompat/view/menu/bo0;)V

    invoke-virtual {p0, v2, p1, v3}, Landroidx/appcompat/view/menu/ck$g;->B(Ljava/util/ArrayList;Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/dw;)V

    :cond_6
    return-void
.end method

.method public final n(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 4

    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/appcompat/view/menu/s51;->a(Landroid/view/ViewGroup;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "child"

    invoke-static {v2, v3}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/view/menu/ck$g;->n(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/gw0$d;)Landroidx/appcompat/view/menu/lh0;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v4, Landroid/view/View;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, v0, Landroidx/appcompat/view/menu/ck$g;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v8, 0x0

    move v10, v8

    const/4 v9, 0x0

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/view/menu/ck$h;

    invoke-virtual {v11}, Landroidx/appcompat/view/menu/ck$h;->g()Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v11, v0, Landroidx/appcompat/view/menu/ck$g;->k:Landroidx/appcompat/view/menu/o4;

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    const/4 v12, 0x1

    xor-int/2addr v11, v12

    if-eqz v11, :cond_0

    iget-object v11, v0, Landroidx/appcompat/view/menu/ck$g;->h:Ljava/lang/Object;

    if-eqz v11, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v13

    iget-boolean v14, v0, Landroidx/appcompat/view/menu/ck$g;->p:Z

    iget-object v15, v0, Landroidx/appcompat/view/menu/ck$g;->n:Landroidx/appcompat/view/menu/o4;

    invoke-static {v11, v13, v14, v15, v12}, Landroidx/appcompat/view/menu/yv;->a(Landroidx/appcompat/view/menu/av;Landroidx/appcompat/view/menu/av;ZLandroidx/appcompat/view/menu/o4;Z)V

    new-instance v11, Landroidx/appcompat/view/menu/gk;

    invoke-direct {v11, v2, v3, v0}, Landroidx/appcompat/view/menu/gk;-><init>(Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/gw0$d;Landroidx/appcompat/view/menu/ck$g;)V

    invoke-static {v1, v11}, Landroidx/appcompat/view/menu/og0;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/appcompat/view/menu/og0;

    iget-object v11, v0, Landroidx/appcompat/view/menu/ck$g;->i:Ljava/util/ArrayList;

    iget-object v13, v0, Landroidx/appcompat/view/menu/ck$g;->n:Landroidx/appcompat/view/menu/o4;

    invoke-virtual {v13}, Landroidx/appcompat/view/menu/o4;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v11, v0, Landroidx/appcompat/view/menu/ck$g;->m:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    xor-int/2addr v11, v12

    if-eqz v11, :cond_1

    iget-object v9, v0, Landroidx/appcompat/view/menu/ck$g;->m:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    const-string v11, "exitingNames[0]"

    invoke-static {v9, v11}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/lang/String;

    iget-object v11, v0, Landroidx/appcompat/view/menu/ck$g;->n:Landroidx/appcompat/view/menu/o4;

    invoke-virtual {v11, v9}, Landroidx/appcompat/view/menu/nu0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    iget-object v11, v0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    iget-object v13, v0, Landroidx/appcompat/view/menu/ck$g;->h:Ljava/lang/Object;

    invoke-virtual {v11, v13, v9}, Landroidx/appcompat/view/menu/aw;->v(Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    iget-object v11, v0, Landroidx/appcompat/view/menu/ck$g;->j:Ljava/util/ArrayList;

    iget-object v13, v0, Landroidx/appcompat/view/menu/ck$g;->o:Landroidx/appcompat/view/menu/o4;

    invoke-virtual {v13}, Landroidx/appcompat/view/menu/o4;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v11, v0, Landroidx/appcompat/view/menu/ck$g;->l:Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    xor-int/2addr v11, v12

    if-eqz v11, :cond_2

    iget-object v11, v0, Landroidx/appcompat/view/menu/ck$g;->l:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    const-string v13, "enteringNames[0]"

    invoke-static {v11, v13}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Ljava/lang/String;

    iget-object v13, v0, Landroidx/appcompat/view/menu/ck$g;->o:Landroidx/appcompat/view/menu/o4;

    invoke-virtual {v13, v11}, Landroidx/appcompat/view/menu/nu0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    if-eqz v11, :cond_2

    iget-object v10, v0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    new-instance v13, Landroidx/appcompat/view/menu/hk;

    invoke-direct {v13, v10, v11, v5}, Landroidx/appcompat/view/menu/hk;-><init>(Landroidx/appcompat/view/menu/aw;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v1, v13}, Landroidx/appcompat/view/menu/og0;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/appcompat/view/menu/og0;

    move v10, v12

    :cond_2
    iget-object v11, v0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    iget-object v12, v0, Landroidx/appcompat/view/menu/ck$g;->h:Ljava/lang/Object;

    iget-object v13, v0, Landroidx/appcompat/view/menu/ck$g;->i:Ljava/util/ArrayList;

    invoke-virtual {v11, v12, v4, v13}, Landroidx/appcompat/view/menu/aw;->z(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    iget-object v14, v0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    iget-object v11, v0, Landroidx/appcompat/view/menu/ck$g;->h:Ljava/lang/Object;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    iget-object v12, v0, Landroidx/appcompat/view/menu/ck$g;->j:Ljava/util/ArrayList;

    move-object v15, v11

    move-object/from16 v20, v11

    move-object/from16 v21, v12

    invoke-virtual/range {v14 .. v21}, Landroidx/appcompat/view/menu/aw;->s(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, v0, Landroidx/appcompat/view/menu/ck$g;->d:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/ck$h;

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object v7

    iget-object v15, v0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    invoke-virtual {v14}, Landroidx/appcompat/view/menu/ck$h;->f()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroidx/appcompat/view/menu/aw;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_d

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v27, v11

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v11

    iget-object v11, v11, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    move-object/from16 v28, v13

    const-string v13, "operation.fragment.mView"

    invoke-static {v11, v13}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v15, v11}, Landroidx/appcompat/view/menu/ck$g;->n(Ljava/util/ArrayList;Landroid/view/View;)V

    iget-object v11, v0, Landroidx/appcompat/view/menu/ck$g;->h:Ljava/lang/Object;

    if-eqz v11, :cond_6

    if-eq v7, v3, :cond_4

    if-ne v7, v2, :cond_6

    :cond_4
    if-ne v7, v3, :cond_5

    iget-object v11, v0, Landroidx/appcompat/view/menu/ck$g;->i:Ljava/util/ArrayList;

    invoke-static {v11}, Landroidx/appcompat/view/menu/qc;->x(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_5
    iget-object v11, v0, Landroidx/appcompat/view/menu/ck$g;->j:Ljava/util/ArrayList;

    invoke-static {v11}, Landroidx/appcompat/view/menu/qc;->x(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v11

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_6
    :goto_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, v0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    invoke-virtual {v11, v8, v4}, Landroidx/appcompat/view/menu/aw;->a(Ljava/lang/Object;Landroid/view/View;)V

    goto :goto_3

    :cond_7
    iget-object v11, v0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    invoke-virtual {v11, v8, v15}, Landroidx/appcompat/view/menu/aw;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    iget-object v11, v0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v19, v11

    move-object/from16 v20, v8

    move-object/from16 v21, v8

    move-object/from16 v22, v15

    invoke-virtual/range {v19 .. v26}, Landroidx/appcompat/view/menu/aw;->s(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/gw0$d;->h()Landroidx/appcompat/view/menu/gw0$d$b;

    move-result-object v11

    sget-object v13, Landroidx/appcompat/view/menu/gw0$d$b;->p:Landroidx/appcompat/view/menu/gw0$d$b;

    if-ne v11, v13, :cond_8

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroidx/appcompat/view/menu/gw0$d;->r(Z)V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v11

    iget-object v11, v11, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v11, v0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    invoke-virtual {v7}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v2

    iget-object v2, v2, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    invoke-virtual {v11, v8, v2, v13}, Landroidx/appcompat/view/menu/aw;->r(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    new-instance v2, Landroidx/appcompat/view/menu/ik;

    invoke-direct {v2, v15}, Landroidx/appcompat/view/menu/ik;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/og0;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroidx/appcompat/view/menu/og0;

    :cond_8
    :goto_3
    invoke-virtual {v7}, Landroidx/appcompat/view/menu/gw0$d;->h()Landroidx/appcompat/view/menu/gw0$d$b;

    move-result-object v2

    sget-object v7, Landroidx/appcompat/view/menu/gw0$d$b;->o:Landroidx/appcompat/view/menu/gw0$d$b;

    const-string v11, "View: "

    const-string v13, "transitioningViews"

    if-ne v2, v7, :cond_a

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v10, :cond_9

    iget-object v2, v0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    invoke-virtual {v2, v8, v5}, Landroidx/appcompat/view/menu/aw;->u(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_9
    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Entering Transition: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v13}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_a
    iget-object v2, v0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    invoke-virtual {v2, v8, v9}, Landroidx/appcompat/view/menu/aw;->v(Ljava/lang/Object;Landroid/view/View;)V

    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exiting Transition: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v13}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_b
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/ck$h;->h()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    const/4 v7, 0x0

    invoke-virtual {v2, v12, v8, v7}, Landroidx/appcompat/view/menu/aw;->p(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v2, p2

    move-object/from16 v11, v27

    move-object/from16 v13, v28

    :goto_6
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v7, 0x0

    iget-object v2, v0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    move-object/from16 v11, v28

    invoke-virtual {v2, v11, v8, v7}, Landroidx/appcompat/view/menu/aw;->p(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    :goto_7
    move-object/from16 v2, p2

    move-object/from16 v11, v27

    goto :goto_6

    :cond_d
    move-object/from16 v27, v11

    move-object v11, v13

    goto :goto_7

    :cond_e
    move-object v11, v13

    iget-object v1, v0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    iget-object v2, v0, Landroidx/appcompat/view/menu/ck$g;->h:Ljava/lang/Object;

    invoke-virtual {v1, v12, v11, v2}, Landroidx/appcompat/view/menu/aw;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Final merged transition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f
    new-instance v2, Landroidx/appcompat/view/menu/lh0;

    invoke-direct {v2, v6, v1}, Landroidx/appcompat/view/menu/lh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final s()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->r:Ljava/lang/Object;

    return-object v0
.end method

.method public final t()Landroidx/appcompat/view/menu/gw0$d;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->e:Landroidx/appcompat/view/menu/gw0$d;

    return-object v0
.end method

.method public final u()Landroidx/appcompat/view/menu/gw0$d;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->f:Landroidx/appcompat/view/menu/gw0$d;

    return-object v0
.end method

.method public final v()Landroidx/appcompat/view/menu/aw;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->g:Landroidx/appcompat/view/menu/aw;

    return-object v0
.end method

.method public final w()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->d:Ljava/util/List;

    return-object v0
.end method

.method public final x()Z
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/ck$g;->d:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/ck$h;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/ck$f;->a()Landroidx/appcompat/view/menu/gw0$d;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v1

    iget-boolean v1, v1, Landroidx/appcompat/view/menu/av;->m:Z

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :cond_2
    :goto_0
    return v2
.end method

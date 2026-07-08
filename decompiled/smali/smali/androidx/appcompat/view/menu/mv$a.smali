.class public Landroidx/appcompat/view/menu/mv$a;
.super Landroidx/appcompat/view/menu/bg0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/mv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Landroidx/appcompat/view/menu/mv;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/mv;Z)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/mv$a;->d:Landroidx/appcompat/view/menu/mv;

    invoke-direct {p0, p2}, Landroidx/appcompat/view/menu/bg0;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnBackCancelled. PREDICTIVE_BACK = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroidx/appcompat/view/menu/mv;->R:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " fragment manager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv$a;->d:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    sget-boolean v0, Landroidx/appcompat/view/menu/mv;->R:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv$a;->d:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->m()V

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv$a;->d:Landroidx/appcompat/view/menu/mv;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/view/menu/mv;->h:Landroidx/appcompat/view/menu/n7;

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnBackPressed. PREDICTIVE_BACK = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroidx/appcompat/view/menu/mv;->R:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " fragment manager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv$a;->d:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv$a;->d:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/mv;->r0()V

    return-void
.end method

.method public c(Landroidx/appcompat/view/menu/h7;)V
    .locals 4

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnBackProgressed. PREDICTIVE_BACK = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Landroidx/appcompat/view/menu/mv;->R:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " fragment manager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/appcompat/view/menu/mv$a;->d:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/mv$a;->d:Landroidx/appcompat/view/menu/mv;

    iget-object v1, v0, Landroidx/appcompat/view/menu/mv;->h:Landroidx/appcompat/view/menu/n7;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/appcompat/view/menu/mv$a;->d:Landroidx/appcompat/view/menu/mv;

    iget-object v2, v2, Landroidx/appcompat/view/menu/mv;->h:Landroidx/appcompat/view/menu/n7;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/mv;->r(Ljava/util/ArrayList;II)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/gw0;

    invoke-virtual {v1, p1}, Landroidx/appcompat/view/menu/gw0;->x(Landroidx/appcompat/view/menu/h7;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Landroidx/appcompat/view/menu/mv$a;->d:Landroidx/appcompat/view/menu/mv;

    iget-object p1, p1, Landroidx/appcompat/view/menu/mv;->o:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public d(Landroidx/appcompat/view/menu/h7;)V
    .locals 1

    const/4 p1, 0x3

    invoke-static {p1}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleOnBackStarted. PREDICTIVE_BACK = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Landroidx/appcompat/view/menu/mv;->R:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " fragment manager "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/appcompat/view/menu/mv$a;->d:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    sget-boolean p1, Landroidx/appcompat/view/menu/mv;->R:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/view/menu/mv$a;->d:Landroidx/appcompat/view/menu/mv;

    invoke-static {p1}, Landroidx/appcompat/view/menu/mv;->e(Landroidx/appcompat/view/menu/mv;)V

    iget-object p1, p0, Landroidx/appcompat/view/menu/mv$a;->d:Landroidx/appcompat/view/menu/mv;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/mv;->R0()V

    :cond_1
    return-void
.end method

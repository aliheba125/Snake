.class public final Landroidx/appcompat/view/menu/gw0$c;
.super Landroidx/appcompat/view/menu/gw0$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/gw0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final l:Landroidx/appcompat/view/menu/tv;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/gw0$d$b;Landroidx/appcompat/view/menu/gw0$d$a;Landroidx/appcompat/view/menu/tv;)V
    .locals 2

    const-string v0, "finalState"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleImpact"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentStateManager"

    invoke-static {p3, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroidx/appcompat/view/menu/tv;->k()Landroidx/appcompat/view/menu/av;

    move-result-object v0

    const-string v1, "fragmentStateManager.fragment"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/view/menu/gw0$d;-><init>(Landroidx/appcompat/view/menu/gw0$d$b;Landroidx/appcompat/view/menu/gw0$d$a;Landroidx/appcompat/view/menu/av;)V

    iput-object p3, p0, Landroidx/appcompat/view/menu/gw0$c;->l:Landroidx/appcompat/view/menu/tv;

    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/view/menu/gw0$d;->e()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/appcompat/view/menu/av;->m:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0$c;->l:Landroidx/appcompat/view/menu/tv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/tv;->m()V

    return-void
.end method

.method public q()V
    .locals 5

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gw0$d;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/view/menu/gw0$d;->q()V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gw0$d;->j()Landroidx/appcompat/view/menu/gw0$d$a;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/gw0$d$a;->n:Landroidx/appcompat/view/menu/gw0$d$a;

    const-string v2, " for Fragment "

    const/4 v3, 0x2

    const-string v4, "fragmentStateManager.fragment"

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0$c;->l:Landroidx/appcompat/view/menu/tv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/tv;->k()Landroidx/appcompat/view/menu/av;

    move-result-object v0

    invoke-static {v0, v4}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/appcompat/view/menu/av;->H:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/av;->Y0(Landroid/view/View;)V

    invoke-static {v3}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestFocus: Saved focused view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gw0$d;->i()Landroidx/appcompat/view/menu/av;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/av;->S0()Landroid/view/View;

    move-result-object v1

    const-string v2, "this.fragment.requireView()"

    invoke-static {v1, v2}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Landroidx/appcompat/view/menu/gw0$c;->l:Landroidx/appcompat/view/menu/tv;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/tv;->b()V

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v2

    cmpg-float v2, v2, v3

    if-nez v2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->G()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gw0$d;->j()Landroidx/appcompat/view/menu/gw0$d$a;

    move-result-object v0

    sget-object v1, Landroidx/appcompat/view/menu/gw0$d$a;->o:Landroidx/appcompat/view/menu/gw0$d$a;

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Landroidx/appcompat/view/menu/gw0$c;->l:Landroidx/appcompat/view/menu/tv;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/tv;->k()Landroidx/appcompat/view/menu/av;

    move-result-object v0

    invoke-static {v0, v4}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/av;->S0()Landroid/view/View;

    move-result-object v1

    const-string v4, "fragment.requireView()"

    invoke-static {v1, v4}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Landroidx/appcompat/view/menu/mv;->v0(I)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing focus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " on view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    :cond_6
    :goto_0
    return-void
.end method

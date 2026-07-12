.class public final Landroidx/appcompat/view/menu/mr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/pr0$c;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/pr0;

.field public b:Z

.field public c:Landroid/os/Bundle;

.field public final d:Landroidx/appcompat/view/menu/i80;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/pr0;Landroidx/appcompat/view/menu/b61;)V
    .locals 1

    const-string v0, "savedStateRegistry"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModelStoreOwner"

    invoke-static {p2, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/mr0;->a:Landroidx/appcompat/view/menu/pr0;

    new-instance p1, Landroidx/appcompat/view/menu/mr0$a;

    invoke-direct {p1, p2}, Landroidx/appcompat/view/menu/mr0$a;-><init>(Landroidx/appcompat/view/menu/b61;)V

    invoke-static {p1}, Landroidx/appcompat/view/menu/l80;->a(Landroidx/appcompat/view/menu/dw;)Landroidx/appcompat/view/menu/i80;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/mr0;->d:Landroidx/appcompat/view/menu/i80;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/mr0;->c:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mr0;->b()Landroidx/appcompat/view/menu/nr0;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/nr0;->d()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroidx/appcompat/view/menu/mr0;->b:Z

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/jy0;->a(Ljava/lang/Object;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b()Landroidx/appcompat/view/menu/nr0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mr0;->d:Landroidx/appcompat/view/menu/i80;

    invoke-interface {v0}, Landroidx/appcompat/view/menu/i80;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/nr0;

    return-object v0
.end method

.method public final c()V
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/mr0;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/mr0;->a:Landroidx/appcompat/view/menu/pr0;

    const-string v1, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/pr0;->b(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Landroidx/appcompat/view/menu/mr0;->c:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    iput-object v1, p0, Landroidx/appcompat/view/menu/mr0;->c:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/mr0;->b:Z

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/mr0;->b()Landroidx/appcompat/view/menu/nr0;

    :cond_2
    return-void
.end method

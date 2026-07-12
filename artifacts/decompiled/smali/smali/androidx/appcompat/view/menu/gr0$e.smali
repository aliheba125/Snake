.class public abstract Landroidx/appcompat/view/menu/gr0$e;
.super Landroidx/appcompat/view/menu/gr0$f;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/gr0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation


# instance fields
.field public m:Landroidx/appcompat/view/menu/gr0$c;

.field public n:Landroidx/appcompat/view/menu/gr0$c;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/gr0$c;Landroidx/appcompat/view/menu/gr0$c;)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/gr0$f;-><init>()V

    iput-object p2, p0, Landroidx/appcompat/view/menu/gr0$e;->m:Landroidx/appcompat/view/menu/gr0$c;

    iput-object p1, p0, Landroidx/appcompat/view/menu/gr0$e;->n:Landroidx/appcompat/view/menu/gr0$c;

    return-void
.end method


# virtual methods
.method public b(Landroidx/appcompat/view/menu/gr0$c;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gr0$e;->m:Landroidx/appcompat/view/menu/gr0$c;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/gr0$e;->n:Landroidx/appcompat/view/menu/gr0$c;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/view/menu/gr0$e;->n:Landroidx/appcompat/view/menu/gr0$c;

    iput-object v0, p0, Landroidx/appcompat/view/menu/gr0$e;->m:Landroidx/appcompat/view/menu/gr0$c;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/gr0$e;->m:Landroidx/appcompat/view/menu/gr0$c;

    if-ne v0, p1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/gr0$e;->c(Landroidx/appcompat/view/menu/gr0$c;)Landroidx/appcompat/view/menu/gr0$c;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/gr0$e;->m:Landroidx/appcompat/view/menu/gr0$c;

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/gr0$e;->n:Landroidx/appcompat/view/menu/gr0$c;

    if-ne v0, p1, :cond_2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gr0$e;->f()Landroidx/appcompat/view/menu/gr0$c;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/gr0$e;->n:Landroidx/appcompat/view/menu/gr0$c;

    :cond_2
    return-void
.end method

.method public abstract c(Landroidx/appcompat/view/menu/gr0$c;)Landroidx/appcompat/view/menu/gr0$c;
.end method

.method public abstract d(Landroidx/appcompat/view/menu/gr0$c;)Landroidx/appcompat/view/menu/gr0$c;
.end method

.method public e()Ljava/util/Map$Entry;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/gr0$e;->n:Landroidx/appcompat/view/menu/gr0$c;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gr0$e;->f()Landroidx/appcompat/view/menu/gr0$c;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/menu/gr0$e;->n:Landroidx/appcompat/view/menu/gr0$c;

    return-object v0
.end method

.method public final f()Landroidx/appcompat/view/menu/gr0$c;
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/gr0$e;->n:Landroidx/appcompat/view/menu/gr0$c;

    iget-object v1, p0, Landroidx/appcompat/view/menu/gr0$e;->m:Landroidx/appcompat/view/menu/gr0$c;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/gr0$e;->d(Landroidx/appcompat/view/menu/gr0$c;)Landroidx/appcompat/view/menu/gr0$c;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gr0$e;->n:Landroidx/appcompat/view/menu/gr0$c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gr0$e;->e()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.class public Landroidx/appcompat/view/menu/gr0$d;
.super Landroidx/appcompat/view/menu/gr0$f;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/gr0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public m:Landroidx/appcompat/view/menu/gr0$c;

.field public n:Z

.field public final synthetic o:Landroidx/appcompat/view/menu/gr0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/gr0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/gr0$d;->o:Landroidx/appcompat/view/menu/gr0;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/gr0$f;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/appcompat/view/menu/gr0$d;->n:Z

    return-void
.end method


# virtual methods
.method public b(Landroidx/appcompat/view/menu/gr0$c;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gr0$d;->m:Landroidx/appcompat/view/menu/gr0$c;

    if-ne p1, v0, :cond_1

    iget-object p1, v0, Landroidx/appcompat/view/menu/gr0$c;->p:Landroidx/appcompat/view/menu/gr0$c;

    iput-object p1, p0, Landroidx/appcompat/view/menu/gr0$d;->m:Landroidx/appcompat/view/menu/gr0$c;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/gr0$d;->n:Z

    :cond_1
    return-void
.end method

.method public c()Ljava/util/Map$Entry;
    .locals 1

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/gr0$d;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/appcompat/view/menu/gr0$d;->n:Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/gr0$d;->o:Landroidx/appcompat/view/menu/gr0;

    iget-object v0, v0, Landroidx/appcompat/view/menu/gr0;->m:Landroidx/appcompat/view/menu/gr0$c;

    iput-object v0, p0, Landroidx/appcompat/view/menu/gr0$d;->m:Landroidx/appcompat/view/menu/gr0$c;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/gr0$d;->m:Landroidx/appcompat/view/menu/gr0$c;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/appcompat/view/menu/gr0$c;->o:Landroidx/appcompat/view/menu/gr0$c;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroidx/appcompat/view/menu/gr0$d;->m:Landroidx/appcompat/view/menu/gr0$c;

    :goto_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/gr0$d;->m:Landroidx/appcompat/view/menu/gr0$c;

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/gr0$d;->n:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/gr0$d;->o:Landroidx/appcompat/view/menu/gr0;

    iget-object v0, v0, Landroidx/appcompat/view/menu/gr0;->m:Landroidx/appcompat/view/menu/gr0$c;

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/gr0$d;->m:Landroidx/appcompat/view/menu/gr0$c;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/appcompat/view/menu/gr0$c;->o:Landroidx/appcompat/view/menu/gr0$c;

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/gr0$d;->c()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

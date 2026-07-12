.class public final Landroidx/appcompat/view/menu/qy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/i80;
.implements Ljava/io/Serializable;


# instance fields
.field public m:Landroidx/appcompat/view/menu/dw;

.field public volatile n:Ljava/lang/Object;

.field public final o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/dw;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "initializer"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/qy0;->m:Landroidx/appcompat/view/menu/dw;

    .line 2
    sget-object p1, Landroidx/appcompat/view/menu/d31;->a:Landroidx/appcompat/view/menu/d31;

    iput-object p1, p0, Landroidx/appcompat/view/menu/qy0;->n:Ljava/lang/Object;

    if-nez p2, :cond_0

    move-object p2, p0

    :cond_0
    iput-object p2, p0, Landroidx/appcompat/view/menu/qy0;->o:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/dw;Ljava/lang/Object;ILandroidx/appcompat/view/menu/lj;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/qy0;-><init>(Landroidx/appcompat/view/menu/dw;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/qy0;->n:Ljava/lang/Object;

    sget-object v1, Landroidx/appcompat/view/menu/d31;->a:Landroidx/appcompat/view/menu/d31;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/qy0;->n:Ljava/lang/Object;

    sget-object v1, Landroidx/appcompat/view/menu/d31;->a:Landroidx/appcompat/view/menu/d31;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/qy0;->o:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroidx/appcompat/view/menu/qy0;->n:Ljava/lang/Object;

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/qy0;->m:Landroidx/appcompat/view/menu/dw;

    invoke-static {v1}, Landroidx/appcompat/view/menu/z50;->b(Ljava/lang/Object;)V

    invoke-interface {v1}, Landroidx/appcompat/view/menu/dw;->d()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/view/menu/qy0;->n:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/appcompat/view/menu/qy0;->m:Landroidx/appcompat/view/menu/dw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qy0;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/qy0;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Lazy value not initialized yet."

    :goto_0
    return-object v0
.end method

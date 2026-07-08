.class public final Landroidx/appcompat/view/menu/lu1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/sw1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/sw1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/lu1;->m:Landroidx/appcompat/view/menu/sw1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/lu1;->m:Landroidx/appcompat/view/menu/sw1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/sw1;->c(Landroidx/appcompat/view/menu/sw1;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/lu1;->m:Landroidx/appcompat/view/menu/sw1;

    invoke-static {v1}, Landroidx/appcompat/view/menu/sw1;->a(Landroidx/appcompat/view/menu/sw1;)Landroidx/appcompat/view/menu/fg0;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroidx/appcompat/view/menu/sw1;->a(Landroidx/appcompat/view/menu/sw1;)Landroidx/appcompat/view/menu/fg0;

    move-result-object v1

    invoke-interface {v1}, Landroidx/appcompat/view/menu/fg0;->c()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

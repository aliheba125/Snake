.class public final synthetic Landroidx/appcompat/view/menu/ju0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/window/layout/adapter/sidecar/b$c;

.field public final synthetic n:Landroidx/appcompat/view/menu/y91;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/layout/adapter/sidecar/b$c;Landroidx/appcompat/view/menu/y91;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/ju0;->m:Landroidx/window/layout/adapter/sidecar/b$c;

    iput-object p2, p0, Landroidx/appcompat/view/menu/ju0;->n:Landroidx/appcompat/view/menu/y91;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/ju0;->m:Landroidx/window/layout/adapter/sidecar/b$c;

    iget-object v1, p0, Landroidx/appcompat/view/menu/ju0;->n:Landroidx/appcompat/view/menu/y91;

    invoke-static {v0, v1}, Landroidx/window/layout/adapter/sidecar/b$c;->a(Landroidx/window/layout/adapter/sidecar/b$c;Landroidx/appcompat/view/menu/y91;)V

    return-void
.end method

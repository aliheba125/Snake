.class public final synthetic Landroidx/appcompat/view/menu/gv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroid/content/Intent;

.field public final synthetic n:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/gv0;->m:Landroid/content/Intent;

    iput-object p2, p0, Landroidx/appcompat/view/menu/gv0;->n:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/gv0;->m:Landroid/content/Intent;

    iget-object v1, p0, Landroidx/appcompat/view/menu/gv0;->n:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/jv0;->h(Landroid/content/Intent;Landroid/os/IBinder;)V

    return-void
.end method

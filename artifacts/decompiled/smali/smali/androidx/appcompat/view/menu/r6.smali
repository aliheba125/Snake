.class public final synthetic Landroidx/appcompat/view/menu/r6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/t6;

.field public final synthetic n:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/t6;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/r6;->m:Landroidx/appcompat/view/menu/t6;

    iput-object p2, p0, Landroidx/appcompat/view/menu/r6;->n:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/r6;->m:Landroidx/appcompat/view/menu/t6;

    iget-object v1, p0, Landroidx/appcompat/view/menu/r6;->n:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/t6;->h(Landroidx/appcompat/view/menu/t6;Landroid/os/IBinder;)V

    return-void
.end method

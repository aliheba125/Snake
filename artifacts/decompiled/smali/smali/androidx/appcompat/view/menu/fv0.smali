.class public final synthetic Landroidx/appcompat/view/menu/fv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/fv0;->m:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/fv0;->m:Landroid/os/IBinder;

    invoke-static {v0}, Landroidx/appcompat/view/menu/jv0;->k(Landroid/os/IBinder;)V

    return-void
.end method

.class public abstract Landroidx/appcompat/view/menu/b20$a;
.super Landroidx/appcompat/view/menu/kh1;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/b20;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/b20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/kh1;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/appcompat/view/menu/b20;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/view/menu/b20;

    if-eqz v1, :cond_1

    check-cast v0, Landroidx/appcompat/view/menu/b20;

    return-object v0

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/yh1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/yh1;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.class public final Landroidx/appcompat/view/menu/bn1;
.super Ljava/lang/ClassLoader;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public final loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 1

    const-string v0, "com.google.android.gms.iid.MessengerCompat"

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "CloudMessengerCompat"

    const/4 p2, 0x3

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const-class p1, Landroidx/appcompat/view/menu/ep1;

    return-object p1
.end method

.class public Landroidx/profileinstaller/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/profileinstaller/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/profileinstaller/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public b(ILjava/lang/Object;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p2, Ljava/lang/Throwable;

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

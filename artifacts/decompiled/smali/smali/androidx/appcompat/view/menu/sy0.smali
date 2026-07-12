.class public Landroidx/appcompat/view/menu/sy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/dc;


# static fields
.field public static a:Landroidx/appcompat/view/menu/sy0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Landroidx/appcompat/view/menu/sy0;
    .locals 1

    sget-object v0, Landroidx/appcompat/view/menu/sy0;->a:Landroidx/appcompat/view/menu/sy0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/sy0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/sy0;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/sy0;->a:Landroidx/appcompat/view/menu/sy0;

    :cond_0
    sget-object v0, Landroidx/appcompat/view/menu/sy0;->a:Landroidx/appcompat/view/menu/sy0;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

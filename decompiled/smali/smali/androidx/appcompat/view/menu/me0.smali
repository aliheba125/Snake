.class public final Landroidx/appcompat/view/menu/me0;
.super Landroidx/appcompat/view/menu/wr0;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/appcompat/view/menu/me0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/me0;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/me0;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/me0;->a:Landroidx/appcompat/view/menu/me0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/wr0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

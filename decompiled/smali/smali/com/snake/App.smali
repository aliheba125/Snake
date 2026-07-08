.class public Lcom/snake/App;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x65t
        0x6et
        0x67t
        0x69t
        0x6et
        0x65t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p0}, Landroidx/appcompat/view/menu/zh;->a(Landroid/app/Application;)V

    sput-object p1, Lcom/snake/App;->a:Landroid/content/Context;

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object p1

    sget-object v0, Lcom/snake/App;->a:Landroid/content/Context;

    new-instance v1, Lcom/snake/App$a;

    invoke-direct {v1, p0}, Lcom/snake/App$a;-><init>(Lcom/snake/App;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/menu/yu0;->f(Landroid/content/Context;Landroidx/appcompat/view/menu/wb;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {}, Landroidx/appcompat/view/menu/yu0;->h()Landroidx/appcompat/view/menu/yu0;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/yu0;->g()V

    return-void
.end method

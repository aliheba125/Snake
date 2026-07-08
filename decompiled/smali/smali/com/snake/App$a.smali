.class public Lcom/snake/App$a;
.super Landroidx/appcompat/view/menu/wb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snake/App;->attachBaseContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/snake/App;


# direct methods
.method public constructor <init>(Lcom/snake/App;)V
    .locals 0

    iput-object p1, p0, Lcom/snake/App$a;->a:Lcom/snake/App;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/wb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/snake/App;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

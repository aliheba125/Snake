.class public final synthetic Landroidx/appcompat/view/menu/mw1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field public synthetic a:Landroidx/appcompat/view/menu/gw1;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/gw1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/mw1;->a:Landroidx/appcompat/view/menu/gw1;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/mw1;->a:Landroidx/appcompat/view/menu/gw1;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/view/menu/gw1;->d(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

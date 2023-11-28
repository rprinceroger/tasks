# Sticky Info - Option to move forward:

> For the funnel, it should be updated in a way that the information on the application part sticks to the booking section. So user will not need to go over the same field.

- [x] According to GHL support, it is not yet possible to use the built-in sticky contact feature as it applies only to specific forms. Not possible to pass/reuse information from one form to another form with a calendar.

<br>
<br>

**How is it not possible when GHL leaves the browser cache with its Sticky Contact feature enabled?**
- GHL's Sticky Contact featured generate an encrypted cache for security and the same GHL form(means without calendar) can only reuse the encrypted cache, the reason when the other user uses the same browser without clearing the cache it auto populates the information of the previous user who submitted the form.
Nonetheless, if you went to a different website (URL) and used the GHL's calendar form. This new form won't be able to recognize the encrypted cache that was saved by the other GHL form in the local storage of the browser.

> [!NOTE]
> This concern was already reported on the GHL community forum for improvement.

<hr>

> Here are the options to move forward: 
- [x] Consolidate the two GHL forms into one to avoid repeating the same information input.

- [x] Either upgrade to Elementor Pro or purchase Plus Addons for Elementor.

- [x] Switch to GHL's Page Builder.

- [x] Switch to hardcoding (HTML, CSS, JS).

<hr>

[Limited to GHL Page Builder](https://ideas.gohighlevel.com/forms/p/ditch-iframe-for-a-proper-form-embed-code)

[Params with GHL](https://help.gohighlevel.com/support/solutions/articles/48001164119-how-to-use-url-parameters-in-forms)

<hr>

[Params with WordPress Elementor - Elementor Pro](https://www.youtube.com/watch?v=CBLIWeSmz30)


[Redirect URL with WordPress Elementor - Addon](https://theplusaddons.com/docs/set-elementor-display-condition-based-on-url-string-or-parameters/)

<hr>

[Hardcoding](https://jmp.sh/6yRQu8Dh)
> We need to give up the WordPress and Build our own webpage.

<hr>

> [!Warning]
> Those are just in theory no implementation that is possible.

- [ ] Remove the iFrame feature from GHL on our WordPress website and use Elementor form that has Dynamic Request Params featured. This is a concept of Redirect URL and URL Parameter with Elementor. We're still in the process of developing this theory and we're working on it.

- This is not possible due to difference of their origin - Why are we not fetching the data from other third-party forms or self-made forms that we can feed directly into our GHL tool for statistics?
 